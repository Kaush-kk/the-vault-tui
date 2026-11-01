#!/bin/bash
set -e
echo "✦ Installing The Vault (Cyberpunk TUI Writing Sanctuary & Audio Engine)..."

if command -v dnf >/dev/null 2>&1; then
    sudo dnf install -y python3 micro mpv yt-dlp fzf libnotify
elif command -v apt >/dev/null 2>&1; then
    sudo apt update && sudo apt install -y python3 micro mpv yt-dlp fzf libnotify-bin
elif command -v pacman >/dev/null 2>&1; then
    sudo pacman -S --noconfirm python micro mpv yt-dlp fzf libnotify
fi

sudo cp vault vault-music get-song /usr/local/bin/
[ -f metrolist ] && sudo cp metrolist /usr/local/bin/
sudo chmod +x /usr/local/bin/vault /usr/local/bin/vault-music /usr/local/bin/get-song /usr/local/bin/metrolist 2>/dev/null || true

mkdir -p "$HOME/.config/micro" "$HOME/Vault/Books" "$HOME/Vault/Poems" "$HOME/Vault/Songs" "$HOME/Vault/Music"
[ -f init.lua ] && cp init.lua "$HOME/.config/micro/init.lua"

echo "✅ The Vault installed! Type 'vault' to launch, 'get-song \"Song\"' to download, or 'metrolist \"Song\"' to stream."
