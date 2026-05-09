local cfg = require("lua.shortcuts.config")
local mod = cfg.mainMod

-- Drag and resize windows with mouse
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
