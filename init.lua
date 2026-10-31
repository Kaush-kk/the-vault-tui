local shell = import("micro/shell")
local config = import("micro/config")

function selectMusic(bp)
    shell.RunInteractiveShell("vault-music", false, false)
end

function stopMusic(bp)
    shell.ExecCommand("pkill", "-f", "mpv.*--no-video")
end

function init()
    config.TryBindKey("F5", "lua:initlua.selectMusic", true)
    config.TryBindKey("F6", "lua:initlua.stopMusic", true)
end
