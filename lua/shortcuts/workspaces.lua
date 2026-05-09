local cfg = require("lua.shortcuts.config")
local mod = cfg.mainMod

-- Switch workspaces
for i = 1, 9 do
    hl.bind(mod .. " + " .. i, hl.dsp.exec_cmd("hyprspace switch " .. i))
end
hl.bind(mod .. " + 0", hl.dsp.exec_cmd("hyprspace switch 10"))

-- Move active window to workspace
for i = 1, 9 do
    hl.bind(mod .. " + SHIFT + " .. i, hl.dsp.exec_cmd("hyprspace move " .. i))
end
hl.bind(mod .. " + SHIFT + 0", hl.dsp.exec_cmd("hyprspace move 10"))

-- Workspace offsets
hl.bind(mod .. " + CTRL + 2", hl.dsp.exec_cmd("hyprspace offset 1"))
hl.bind(mod .. " + CTRL + 3", hl.dsp.exec_cmd("hyprspace offset 2"))
hl.bind(mod .. " + CTRL + 4", hl.dsp.exec_cmd("hyprspace offset 3"))

-- Scroll through workspaces with mouse wheel
hl.bind(mod .. " + mouse_down", hl.dsp.exec_cmd("hyprspace switch e+1"))
hl.bind(mod .. " + mouse_up",   hl.dsp.exec_cmd("hyprspace switch e-1"))

-- Special workspace (scratchpad)
hl.bind(mod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
