#!/usr/bin/env -S nix develop .#update -c bash

COMMIT="$1"
ROOT_DIR="$(pwd)"

git_push() {
    if [[ "$COMMIT" == "--commit" ]]; then
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
    update="$(eval "$(nix build .#packages.x86_64-linux.discord-"$1".updateScript --print-out-paths --no-link)")"

    if [[ "$update" != "" ]]; then
        git_push "ci: $update"
    fi
}

updateVencord() {
    nix flake update

    pkgDir=./pkgs/vencord

    tempDir=$(mktemp -d)

    ghTags=$(curl ${GITHUB_TOKEN:+" -u \":$GITHUB_TOKEN\""} "https://api.github.com/repos/Vendicated/Vencord/tags")
    latestTag=$(echo "$ghTags" | jq -r .[0].name)
    gitHash=$(jq -r '.nodes["Vencord-src"].locked.rev' < ./flake.lock)

    pushd "$tempDir"
    curl "https://raw.githubusercontent.com/Vendicated/Vencord/$gitHash/package.json" -o package.json
    npm install --legacy-peer-deps -f

    npmDepsHash=$(prefetch-npm-deps ./package-lock.json)
    popd

    sed -i 's/^  version = ".*";/  version = "'"${latestTag#v}"'";/' "$pkgDir/default.nix"
    sed -E 's#\bgitHash = ".*?"#gitHash = "'"${gitHash:0:7}"'"#' -i "$pkgDir/default.nix"
    sed -E 's#\bnpmDepsHash = ".*?"#npmDepsHash = "'"$npmDepsHash"'"#' -i "$pkgDir/default.nix"
    cp "$tempDir/package-lock.json" "$pkgDir/package-lock.json"
}

updateVencord
updateDiscord "stable"
updateDiscord "canary"
updateDiscord "development"
updateDiscord "ptb"
