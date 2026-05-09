local cfg = require("lua.shortcuts.config")
local mod = cfg.mainMod

-- Focus next monitor
hl.bind(mod .. " + Tab", hl.dsp.focus({ monitor = "+1" }))

-- Move active window to next monitor
hl.bind(mod .. " + SHIFT + Tab", hl.dsp.window.move({ monitor = "+1" }))
