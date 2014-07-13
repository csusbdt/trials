local ui = {}

local mt = {
	overlay_r            = 50,
	overlay_g            = 50,
	overlay_b            = 50,
	overlay_a            = 225,
	overlay_button_color = { r = 200, g = 200, b = 200, a = 255 },
	overlay_text_color   = { r = 200, g = 200, b = 200, a = 255 },
	overlay_text_font    = fonts.create("fonts/CaviarDreams.ttf", 22),
	overlay_button_font  = fonts.create("fonts/CaviarDreams.ttf", 24),
	background_only      = false,
	overlay              = 'none'
}

mt.__index = mt
setmetatable(ui, mt)

function mt.reset()
	setmetatable(ui, nil)
	for k, v in pairs(ui) do
		ui[k] = nil
	end
	setmetatable(ui, mt)
end

local function next_function()
	if ui.i > #ui.s then msgbox("Next goes nowhere."); return end
	local d = ui.s[ui.i]
	ui.date = d.date or ui.date
	ui.bg = d.bg or ui.bg
	ui.lg = d.lg or ui.lg
	ui.sm = d.sm or ui.sm
	ui.n = d.n or ui.n
	ui.d = d.d
	if ui.d then log() end
	next = d.next or next
	ui.c = d.c
	ui.m = d.m or ui.m
	music.set(ui.m)
	ui.i = ui.i + 1
end

function sequence(seq)
	ui.i = 1
	ui.s = seq
	next = next_function
end

function next_node_function(node)
	return function()
		gs.node = node
		ui.c = nil
		dofile(node)
		music.set(ui.m)
	end
end


return ui

