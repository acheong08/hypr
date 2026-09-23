hl.monitor({ output = "eDP-1", mode = "preferred", position = "0x0", scale = "2" })
hl.monitor({ output = "DP-2", mode = "preferred", position = "auto-up", scale = "1.20" })
hl.monitor({ output = "DP-4", mode = "preferred", position = "auto-up", scale = "1.6" })

hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})
