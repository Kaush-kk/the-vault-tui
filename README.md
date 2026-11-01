# ✦ The Vault — Cyberpunk TUI Writing Sanctuary & Opus Audio Engine

A zero-distraction, keyboard-driven Terminal User Interface (TUI) writing environment for Linux with built-in YouTube Music streaming and offline Opus extraction.

---

## 1. One-Command Installation

    git clone https://github.com/Kaush-kk/the-vault-tui.git
    cd the-vault-tui && ./install.sh

---

## 2. Complete Usage Guide

### A. Entering The Writing Sanctuary (`vault`)
* Run `vault` in any terminal to open the pitch-black Cyan/Magenta dashboard.
* Use the **Up/Down Arrow Keys** and **Enter** to browse `Books`, `Poems`, or `Songs`, create new `.txt` manuscripts, or control background audio.
* **Inside the Editor (`micro`):**
  * Press **`F5`** at any time while writing to overlay the interactive `fzf` music selector without leaving your document.
  * Press **`F6`** to immediately silence background music.
  * Press **`Ctrl + S`** to save and **`Ctrl + Q`** to return to the Vault menu.

### B. Downloading Offline Songs (`get-song`)
Fetch any track from YouTube Music in high-efficiency Format-251 `.opus`/`.mp3` directly into `~/Vault/Music`:

    get-song "Song Name or Artist"

### C. Instant Live Streaming Without Downloading (`metrolist`)
Stream any track live in the background or launch a borderless YouTube Music desktop window:

    metrolist "Song Name"          # Opens interactive fzf list (Enter = Stream | Ctrl+D = Save to Vault)
    metrolist --play "Song Name"   # Immediately streams the #1 match in the background
    metrolist stop                 # Stops background audio playback
    metrolist --app                # Opens ad-shielded borderless YouTube Music GUI window

---

## 3. One-Command Complete Removal (Uninstall & Delete Cloned Repo)

To uninstall The Vault system commands and remove the cloned GitHub folder (while keeping your personal `~/Vault` writings untouched):

    ~/the-vault-tui/uninstall.sh && rm -rf ~/the-vault-tui
