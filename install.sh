#!/bin/bash
set -e
echo "✦ Installing The Vault (Cyberpunk TUI Writing Sanctuary)..."

if command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y python3 micro mpv yt-dlp fzf libnotify
elif command -v apt >/dev/null 2>&1; then
    sudo apt update && sudo apt install -y python3 micro mpv yt-dlp fzf libnotify-bin
elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -S --noconfirm python micro mpv yt-dlp fzf libnotify
fi

sudo cp vault vault-music get-song /usr/local/bin/
sudo chmod +x /usr/local/bin/vault /usr/local/bin/vault-music /usr/local/bin/get-song

mkdir -p "$HOME/.config/micro" "$HOME/Vault/Books" "$HOME/Vault/Poems" "$HOME/Vault/Songs" "$HOME/Vault/Music"
[ -f init.lua ] && cp init.lua "$HOME/.config/micro/init.lua"

echo "✅ The Vault installed! Type 'vault' to enter your sanctuary or 'get-song \"Song Name\"' to fetch audio."
