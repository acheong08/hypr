hl.monitor({ output = "eDP-1",    mode = "preferred", position = "0x0",        scale = "2"    })
hl.monitor({ output = "DP-2",     mode = "preferred", position = "auto-up",    scale = "1.25" })
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "auto-right", scale = "1.25" })

hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})
