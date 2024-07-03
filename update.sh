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

            nix flake update
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

updateDiscord "stable"
updateDiscord "canary"
updateDiscord "development"
updateDiscord "ptb"
