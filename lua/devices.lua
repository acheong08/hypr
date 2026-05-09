-- Global input config
hl.config({
    input = {
        kb_layout  = "us",
        kb_options = "compose:ralt",

        follow_mouse = 1,
        sensitivity  = 0,

        touchpad = {
            disable_while_typing = false,
            natural_scroll       = true,
            clickfinger_behavior = true,
        },
    },
})

-- Per-device overrides
hl.device({
    name          = "razer-razer-deathadder-essential-1",
    sensitivity   = -0.7,
    accel_profile = "flat",
})

hl.device({
    name          = "pixart-microsoft-usb-optical-mouse",
    sensitivity   = -0.6,
    accel_profile = "flat",
})

hl.device({
    name          = "telink-trust-deskset-mouse",
    sensitivity   = -0.5,
    accel_profile = "flat",
})

hl.device({
    name   = "opentabletdriver-virtual-artist-tablet",
    output = "DP-2",
})
