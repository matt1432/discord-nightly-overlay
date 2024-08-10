#!/usr/bin/env -S nix develop .#update -c bash

ROOT_DIR="$(pwd)"

while getopts ":cdv-:" option; do
    case $option in
        -)
            case "${OPTARG}" in
                commit) COMMIT="true";;
                discord) UPDATE_DISCORD="true";;
                vencord) UPDATE_VENCORD="true";;
                *) echo "Error: Invalid option"; exit 1;;
            esac
            ;;

        c) COMMIT="true";;
        d) UPDATE_DISCORD="true";;
        v) UPDATE_VENCORD="true";;
        \?) echo "Error: Invalid option"; exit 1;;
    esac
done


git_push() {
    if [[ "$COMMIT" == "true" ]]; then
        (
            cd "$ROOT_DIR" || return
            git config --global user.name 'Updater'
            git config --global user.email 'robot@nowhere.invalid'
            git remote update

            alejandra .
            git add .

            git commit -m "$1"
            git push
        )
    else
        echo "$1"
    fi
}

updateDiscord() {
    branch="$1"

    echo "Updating Discord-$branch"

    update="$(eval "$(
        nix build .#packages.x86_64-linux.discord-"$branch".updateScript --print-out-paths --no-link
    )")"

    if [[ "$update" != "" ]]; then
        git_push "ci: $update"
    fi
}

updateVencord() {
    echo "Updating Vencord"

    # Location stuff
    pkgDir=./pkgs/vencord
    tempDir=$(mktemp -d)


    # Current versions to compare update
    oldGitHash=$(jq -r '.nodes["Vencord-src"].locked.rev' < ./flake.lock)
    oldGitHash=${oldGitHash:0:7}

    oldTag=$(sed -n 's/^  version = "\(.*\)";/\1/p' "$pkgDir/default.nix")


    # Get latest Vencord-src
    nix flake update


    # Check new versions
    ghTags=$(curl ${GITHUB_TOKEN:+" -u \":$GITHUB_TOKEN\""} "https://api.github.com/repos/Vendicated/Vencord/tags")

    latestTag=$(echo "$ghTags" | jq -r .[0].name)
    latestTag=${latestTag#v}

    gitHash=$(jq -r '.nodes["Vencord-src"].locked.rev' < ./flake.lock)
    gitHash=${gitHash:0:7}


    # Update npmDepsHash
    pushd "$tempDir"
    curl "https://raw.githubusercontent.com/Vendicated/Vencord/$gitHash/package.json" -o package.json
    npm install --legacy-peer-deps -f
    npmDepsHash=$(prefetch-npm-deps ./package-lock.json)
    popd

    cp "$tempDir/package-lock.json" "$pkgDir/package-lock.json"


    # Replace values in default.nix
    sed -i 's/^  version = ".*";/  version = "'"$latestTag"'";/' "$pkgDir/default.nix"
    sed -E 's#\bgitHash = ".*?"#gitHash = "'"$gitHash"'"#' -i "$pkgDir/default.nix"
    sed -E 's#\bnpmDepsHash = ".*?"#npmDepsHash = "'"$npmDepsHash"'"#' -i "$pkgDir/default.nix"


    # Commit msg
    if [[ "$oldGitHash" != "$gitHash" ]]; then
        git_push "ci: vencord $oldTag+$oldGitHash -> $latestTag+$gitHash"
    else
        echo "Vencord already up to date"
        git restore "$ROOT_DIR"
    fi
}


if [[ "$UPDATE_VENCORD" == "true" ]]; then
    updateVencord
fi

if [[ "$UPDATE_DISCORD" == "true" ]]; then
    updateDiscord "stable"
    updateDiscord "canary"
    updateDiscord "development"
    updateDiscord "ptb"
fi
