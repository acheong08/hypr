-- Screenshot
hl.bind("Print",        hl.dsp.exec_cmd("hyprshot -s -m region -f screenshot.png -o /tmp/"))
hl.bind("SUPER + Print", hl.dsp.exec_cmd("hyprshot -s -m window -m active -f screenshot.png -o /tmp/"))

-- Brightness
hl.bind("XF86MonBrightnessDown",         hl.dsp.exec_cmd("brightnessctl set 5%-"))
hl.bind("SHIFT + XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 1%-"))
hl.bind("XF86MonBrightnessUp",           hl.dsp.exec_cmd("brightnessctl set +5%"))
hl.bind("SHIFT + XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl set +1%"))

-- Volume
hl.bind("XF86AudioMute",                hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))
hl.bind("XF86AudioLowerVolume",         hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"))
hl.bind("SHIFT + XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -1%"))
hl.bind("XF86AudioRaiseVolume",         hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"))
hl.bind("SHIFT + XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +1%"))

-- Media control
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
