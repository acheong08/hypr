local cfg = require("lua.shortcuts.config")
local mod = cfg.mainMod

-- Terminal
hl.bind(mod .. " + Q", hl.dsp.exec_cmd(cfg.terminal))

-- Window management
hl.bind(mod .. " + C", hl.dsp.window.close())
hl.bind(mod .. " + SHIFT + L", hl.dsp.exit())
hl.bind(mod .. " + V", hl.dsp.window.float({ action = "toggle" }))

-- App launchers
hl.bind(mod .. " + E", hl.dsp.exec_cmd(cfg.fileManager))
hl.bind(mod .. " + R", hl.dsp.exec_cmd(cfg.menu))
hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd("albert show"))
hl.bind(mod .. " + T", hl.dsp.exec_cmd("thunderbird"))
hl.bind(mod .. " + M", hl.dsp.exec_cmd("swaync-client -t -sw"))
hl.bind(mod .. " + B", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))

-- Browsers
hl.bind(mod .. " + F", hl.dsp.exec_cmd("librewolf -P Private"))
hl.bind(mod .. " + SHIFT + F", hl.dsp.exec_cmd("librewolf -P Developer"))
hl.bind("SHIFT + ALT + F", hl.dsp.exec_cmd("librewolf -P 'Entrepreneurs First'"))
hl.bind("CTRL + SHIFT + F", hl.dsp.exec_cmd("librewolf -P Entertainment"))

-- Clipboard
hl.bind(mod .. " + SHIFT + V", hl.dsp.exec_cmd("cliphist list | wofi --dmenu | cliphist decode | wl-copy"))
hl.bind(mod .. " + SHIFT + P", hl.dsp.exec_cmd("cliphist wipe"))

-- HTML to Markdown
hl.bind(mod .. " + SHIFT + C", hl.dsp.exec_cmd("wl-paste --type text/html | html2md -i -T | wl-copy"))

-- Lock screen
hl.bind(mod .. " + L", hl.dsp.exec_cmd("swaylock -i ~/.config/assets/macos.jpg"))
hl.bind("ALT + SHIFT + L", hl.dsp.exec_cmd("hyprlock"))

hl.bind(
	"CTRL + grave",
	hl.dsp.exec_cmd(
		"dbus-send --session --type=method_call --dest=com.openwhispr.App /com/openwhispr/App com.openwhispr.App.Toggle"
	)
)
