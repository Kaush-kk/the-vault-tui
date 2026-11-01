#!/bin/bash
echo "🗑️ Uninstalling The Vault TUI binaries (Your writings inside ~/Vault are kept safe)..."
pkill -f "mpv.*--no-video" 2>/dev/null || true
sudo rm -f /usr/local/bin/vault /usr/local/bin/vault-music /usr/local/bin/get-song /usr/local/bin/metrolist
rm -f "$HOME/.config/micro/init.lua"
echo "✅ The Vault TUI uninstalled. (Run 'rm -rf ~/Vault' only if you also wish to delete your saved writings/music)."
