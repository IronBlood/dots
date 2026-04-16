local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback({
	"JetBrainsMono Nerd Font Mono",
	"Microsoft YaHei",
})
config.font_size = 13.0

config.colors = {
	cursor_border = "#d0d0d0",
	foreground = "#d0d0d0",
	background = "#22243e",
	ansi = {
		"#292d3e",
		"#f07178",
		"#c3e88d",
		"#ffcb6b",
		"#82aaff",
		"#c792ea",
		"#89ddff",
		"#d0d0d0",
	},
	brights = {
		"#434758",
		"#ff8b92",
		"#ddffa7",
		"#ffe585",
		"#9cc4ff",
		"#e1acff",
		"#a3f7ff",
		"#ffffff",
	},
}

config.force_reverse_video_cursor = true

-- turn off hyperlinks
config.hyperlink_rules = {}

config.hide_tab_bar_if_only_one_tab = true

return config
