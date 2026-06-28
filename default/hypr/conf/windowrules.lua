-- Floating windows
hl.window_rule({
    match = {
        tag = "floating-window",
    },
    float = 1,
})
hl.window_rule({
    match = {
        tag = "floating-window",
    },
    center = 1,
})
hl.window_rule({
    match = {
        tag = "floating-window",
    },
    size = "800 600",
})
hl.window_rule({
    match = {
        class = "^(local\\.xdg-desktop-portal-gtk|local\\.sublime_text|local\\.DesktopEditors|local\\.org\\.gnome\\.Nautilus)$",
        title = "^(Open.*Files?|Open [Ff]older.*|Save.*Files?|Save.*As|Save|All Files)$",
    },
    tag = "+floating-window",
})

-- idleinhibit
hl.window_rule({
    match = {
        class = "([window])",
    },
    idle_inhibit = "fullscreen",
})

-- CLI tools
hl.window_rule({
    match = {
        class = "^(local\\.bluetui|local\\.impala|local\\.wiremix|local\\.org\\.gnome\\.NautilusPreviewer|local\\.com\\.gabm\\.satty)$",
    },
    float = 1,
})
hl.window_rule({
    match = {
        class = "^(local\\.bluetui|local\\.impala|local\\.wiremix|local\\.org\\.gnome\\.NautilusPreviewer|local\\.com\\.gabm\\.satty)$",
    },
    center = 1,
})
hl.window_rule({
    match = {
        class = "^(local\\.bluetui|local\\.impala|local\\.wiremix|local\\.org\\.gnome\\.NautilusPreviewer|local\\.com\\.gabm\\.satty)$",
    },
    size = "800 600",
})

-- Floating generic class
hl.window_rule({
    match = {
        class = "^(local\\.floating)$",
    },
    float = 1,
})
hl.window_rule({
    match = {
        class = "^(local\\.floating)$",
    },
    center = 1,
})
hl.window_rule({
    match = {
        class = "^(local\\.floating)$",
    },
    size = "800 600",
})

-- Browser types
hl.window_rule({
    match = {
        class = "([cC]hrom(e|ium)|[bB]rave-browser|Microsoft-edge|Vivaldi-stable|helium-browser)",
    },
    tag = "+chromium-based-browser",
})
hl.window_rule({
    match = {
        class = "([fF]irefox|zen|zen-browser|zen-bin|librewolf)",
    },
    tag = "+firefox-based-browser",
})

-- Force chromium-based browsers into a tile to deal with --app bug
hl.window_rule({
    match = {
        tag = "chromium-based-browser",
    },
    tile = 1,
})

-- Only a subtle opacity change, but not for video sites
hl.window_rule({
    match = {
        tag = "chromium-based-browser",
    },
    opacity = "1 0.97",
})
hl.window_rule({
    match = {
        tag = "firefox-based-browser",
    },
    opacity = "1 0.97",
})

-- Some video sites should never have opacity applied to them
hl.window_rule({
    match = {
        initial_title = "((?i)(?:[a-z0-9-]+\\.)*youtube\\.com_/|app\\.zoom\\.us_/wc/home)",
    },
    opacity = "1.0 1.0",
})

-- No transparency on media windows
hl.window_rule({
    match = {
        class = "^(zoom|vlc|mpv|org.kde.kdenlive|com.obsproject.Studio|com.github.PintaProject.Pinta|imv|org.gnome.NautilusPreviewer)$",
    },
    opacity = "1 1",
})

-- ## App specific tweaks

-- Localsend
hl.window_rule({
    match = {
        class = "(Share|localsend)",
    },
    float = 1,
})
hl.window_rule({
    match = {
        class = "(Share|localsend)",
    },
    center = 1,
})
hl.window_rule({
    match = {
        class = "(Share|localsend)",
    },
    size = "500 700",
})

-- tinte
hl.window_rule({
    match = {
        class = "(org.tinte.Tinte)",
    },
    float = 1,
})
hl.window_rule({
    match = {
        class = "(org.tinte.Tinte)",
    },
    size = "900 700",
})
hl.window_rule({
    match = {
        class = "(org.tinte.Tinte)",
    },
    center = 1,
})
