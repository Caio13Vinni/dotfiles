local var_mainMod = "SUPER"
local var_terminal = "ghostty"

-- SUPER KEY

-- Applications
hl.bind(var_mainMod .. " + return", hl.dsp.exec_cmd("uwsm app -- " .. var_terminal))
hl.bind(var_mainMod .. " + f", hl.dsp.exec_cmd("uwsm app -- firefox"))
hl.bind(var_mainMod .. " + E", hl.dsp.exec_cmd("uwsm app -- nautilus --new-window"))

-- Windows
hl.bind(var_mainMod .. " + q", hl.dsp.window.close())
hl.bind(var_mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("hyprctl activewindow | grep pid | tr -d 'pid:' | xargs kill"))
hl.bind(var_mainMod .. " + SHIFT + space", hl.dsp.window.fullscreen())
hl.bind(var_mainMod .. " + space", hl.dsp.window.fullscreen())
hl.bind(var_mainMod .. " + I", hl.dsp.window.float({ action = "toggle" }))
hl.bind(var_mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(var_mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(var_mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(var_mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(var_mainMod .. " + down", hl.dsp.focus({ direction = "down" }))
hl.bind(var_mainMod .. " + mouse:272", hl.dsp.window.drag(), {
    mouse = true,
})
hl.bind(var_mainMod .. " + mouse:273", hl.dsp.window.resize(), {
    mouse = true,
})
hl.bind(var_mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
hl.bind(var_mainMod .. " + SHIFT + left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
hl.bind(var_mainMod .. " + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))
hl.bind(var_mainMod .. " + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))
hl.bind(var_mainMod .. " + G", hl.dsp.group.toggle())
hl.bind(var_mainMod .. " + K", hl.dsp.layout("swapsplit"))
hl.bind(var_mainMod .. " + ALT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind(var_mainMod .. " + ALT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind(var_mainMod .. " + ALT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind(var_mainMod .. " + ALT + down", hl.dsp.window.swap({ direction = "down" }))

-- Actions
hl.bind(var_mainMod .. " + CTRL + N", hl.dsp.exec_cmd("sunsetr-toggle"))
hl.bind(var_mainMod .. " + CTRL + O", hl.dsp.exec_cmd("ghostty --class=local.floating -e ollama-chat --quick"))
hl.bind("CONTROL_SHIFT + space", hl.dsp.exec_cmd("hyprctl switchxkblayout sonix-usb-device next"))

-- Walker and Elephant
hl.bind(var_mainMod .. " + R", hl.dsp.exec_cmd("walker"))
hl.bind(var_mainMod .. " + Escape", hl.dsp.exec_cmd("walker -t menus -m menus:system -N"))
hl.bind("Print", hl.dsp.exec_cmd("sh -c \"grim -g \\\"$(slurp)\\\" - | wl-copy && notify-send 'Copied Area'\""))
hl.bind(var_mainMod .. " + Print", hl.dsp.exec_cmd("walker -t menus -m menus:screenshots -N"))
hl.bind(var_mainMod .. " + V", hl.dsp.exec_cmd("walker -m clipboard"))
hl.bind(var_mainMod .. " + ALT + SPACE", hl.dsp.exec_cmd("walker -t menus -s menu -N"))
hl.bind(var_mainMod .. " + CTRL + W", hl.dsp.exec_cmd("walker -m menus:wallpapers -N"))

-- Workspaces
hl.bind(var_mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(var_mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(var_mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(var_mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(var_mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(var_mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(var_mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(var_mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(var_mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(var_mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind(var_mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(var_mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(var_mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(var_mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(var_mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(var_mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(var_mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(var_mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(var_mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(var_mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))
hl.bind(var_mainMod .. " + Tab", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(var_mainMod .. " + SHIFT + Tab", hl.dsp.focus({ workspace = "m-1" }))
hl.bind(var_mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(var_mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(var_mainMod .. " + CTRL + down", hl.dsp.focus({ workspace = "empty" }))

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("ddcutil setvcp 10 + 5 && notify-send \"Brightness\" \"$(ddcutil getvcp 10 | awk '/Brightness/ {gsub(/,/, \"\", $9); print $9}')%\""), {
    repeating = true,
})
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("ddcutil setvcp 10 - 5 && notify-send \"Brightness\" \"$(ddcutil getvcp 10 | awk '/Brightness/ {gsub(/,/, \"\", $9); print $9}')%\""), {
    repeating = true,
})

-- Volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume +5"), {
    repeating = true,
})
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume -5"), {
    repeating = true,
})
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"))

-- Media (requires playerctl)
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("swayosd-client --playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("swayosd-client --playerctl previous"))

-- Lock
hl.bind("XF86Lock", hl.dsp.exec_cmd("hyprlock"))

-- TODO: the following entries need manual conversion to Lua:
--   bind = $mainMod SHIFT, T, workspaceopt, allfloat
