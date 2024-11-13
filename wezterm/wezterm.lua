-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end
--
-- -- This is where you actually apply your config choices
--
-- -- -- For example, changing the color scheme:
-- -- config.color_scheme = 'AdventureTime'
-- config.font = wezterm.font('Iosevka NF')
-- print("ciao")
--
-- config.default_domain = "WSL:Ubuntu"
-- -- wezterm.gui is not available to the mux server, so take care to
-- -- do something reasonable when this config is evaluated by the mux
local function get_appearance()
    if wezterm.gui then
        return wezterm.gui.get_appearance()
    end
    return "Dark"
end

local function scheme_for_appearance(appearance)
    if appearance:find("Dark") then
        return "Gruvbox dark, hard (base16)"
    else
        return "Gruvbox light, hard (base16)"
    end
end

config.color_scheme = scheme_for_appearance(get_appearance())
config.enable_tab_bar = false
-- config.window_decorations = "NONE"
config.window_decorations = "RESIZE"


-- and finally, return the configuration to wezterm
return config
