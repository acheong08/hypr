local cfg = require("lua.shortcuts.config")
local mod = cfg.mainMod
local smw = hl.plugin.split_monitor_workspaces

-- Switch workspaces
for i = 1, 9 do
	hl.bind(mod .. " + " .. i, function()
		return smw.workspace(i)
	end)
end
hl.bind(mod .. " + 0", function()
	return smw.workspace(10)
end)

-- Move active window to workspace
for i = 1, 9 do
	hl.bind(mod .. " + SHIFT + " .. i, function()
		return smw.move_to_workspace(i)
	end)
end
hl.bind(mod .. " + SHIFT + 0", function()
	return smw.move_to_workspace(10)
end)

-- Special workspace (scratchpad)
hl.bind(mod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})
