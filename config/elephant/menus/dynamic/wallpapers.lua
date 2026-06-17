Name = "wallpapers"
NamePretty = "Wallpapers"
HideFromProviderlist = true
Cache = false

function GetEntries()
    local entries = {}
    local home = os.getenv("HOME") or ""
    local wallpapers_dir = home .. "/.local/share/dotfiles/current/theme/backgrounds"
    local theme_set_bin = home .. "/.local/share/dotfiles/bin/theme-set"

    local handle = io.popen("find '" .. wallpapers_dir .. "' -maxdepth 1 -type f 2>/dev/null | sort")

    if handle then
        for line in handle:lines() do
            if line ~= "" then
                local filename = line:match("([^/]+)$")
                
                if filename then
                    local ext = filename:match("%.([^.]+)$")
                    -- Filter only valid image extensions
                    if ext == "png" or ext == "jpg" or ext == "jpeg" or ext == "webp" or ext == "gif" then
                        local base_name = filename:gsub("%.[^.]+$", "")
                        table.insert(entries, {
                            Text = base_name,
                            Value = line,
                            Preview = line,
                            PreviewType = "file",
                            Actions = {
                                apply = theme_set_bin .. " --wallpaper '" .. line .. "'",
                            },
                        })
                    end
                end
            end
        end
        handle:close()
    end

    return entries
end