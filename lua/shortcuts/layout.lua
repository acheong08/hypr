local cfg = require("lua.shortcuts.config")
local mod = cfg.mainMod

-- Move focus with arrow keys
hl.bind(mod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Resize active window
hl.bind(mod .. " + SHIFT + right", hl.dsp.window.resize({ x = 30, y = 0, relative = 1 }))
hl.bind(mod .. " + SHIFT + left", hl.dsp.window.resize({ x = -30, y = 0, relative = 1 }))
hl.bind(mod .. " + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -30, relative = 1 }))
hl.bind(mod .. " + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 30, relative = 1 }))

-- Move window in direction
hl.bind(mod .. " + ALT + left", hl.dsp.window.move({ direction = "l" }))
hl.bind(mod .. " + ALT + right", hl.dsp.window.move({ direction = "r" }))

-- Swap window
hl.bind(mod .. " + ALT + up", hl.dsp.window.swap({ direction = "u" }))
hl.bind(mod .. " + ALT + down", hl.dsp.window.swap({ direction = "d" }))

-- Fullscreen
hl.bind(mod .. " + Return", hl.dsp.window.fullscreen_state({ internal = 0, client = 3, action = "toggle" }))
hl.bind(mod .. " + SHIFT + Return", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))

-- Dwindle layout messages
hl.bind(mod .. " + slash", hl.dsp.layout("movetoroot"))
hl.bind(mod .. " + period", hl.dsp.layout("rotatesplit 90"))
hl.bind(mod .. " + comma", hl.dsp.layout("rotatesplit -90"))
hl.bind(mod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mod .. " + K", hl.dsp.window.pseudo())

-- Cycle focus through windows (ALT+Tab)
hl.bind("ALT + Tab", hl.dsp.window.cycle_next({ next = true }))
hl.bind("ALT + SHIFT + Tab", hl.dsp.window.cycle_next({ next = false }))
