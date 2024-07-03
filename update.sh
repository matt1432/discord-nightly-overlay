#!/usr/bin/env bash

eval "$(nix build .#packages.x86_64-linux.discord-canary.updateScript --print-out-paths --no-link)"
eval "$(nix build .#packages.x86_64-linux.discord-development.updateScript --print-out-paths --no-link)"
eval "$(nix build .#packages.x86_64-linux.discord-ptb.updateScript --print-out-paths --no-link)"
eval "$(nix build .#packages.x86_64-linux.discord-stable.updateScript --print-out-paths --no-link)"
