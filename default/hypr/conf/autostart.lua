-- ===== UWSM Check =====
hl.on("hyprland.start", function()
    hl.exec_cmd("~/.local/share/dotfiles/bin/check-uwsm")
end)

-- ===== Theme/cursor settings =====
hl.on("hyprland.start", function()
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
end)

-- ===== Wallpaper =====
hl.on("hyprland.start", function()
    hl.exec_cmd("killall hyprpaper 2>/dev/null || true")
    hl.exec_cmd("awww-daemon")
end)

-- ===== vim motions ====
hl.on("hyprland.start", function()
    hl.exec_cmd("kanata --cfg /etc/kanata/kanata.kbd")
end)
