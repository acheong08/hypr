hl.config({
	general = {
		gaps_in = 1,
		gaps_out = 0,
		border_size = 1,

		col = {
			active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},

		layout = "dwindle",
	},

	decoration = {
		rounding = 10,

		blur = {
			enabled = false,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = false,
	},

	misc = {
		force_default_wallpaper = 1,
		disable_splash_rendering = true,
		initial_workspace_tracking = 0,
		font_family = "JetBrainsMono Nerd Font",
	},

	dwindle = {
		-- keep split orientation stable; required for `togglesplit`
		preserve_split = true,
	},
})
