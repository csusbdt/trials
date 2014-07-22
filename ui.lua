local ui = {}

local mt = {
	overlay_r            = 50,
	overlay_g            = 50,
	overlay_b            = 50,
	overlay_a            = 225,
	overlay_button_color = { r = 200, g = 200, b = 200, a = 255 },
	overlay_text_color   = { r = 200, g = 200, b = 200, a = 255 },
	overlay_text_font    = fonts.create("fonts/CaviarDreams.ttf", 45),
	overlay_button_font  = fonts.create("fonts/CaviarDreams.ttf", 60),
	background_only      = false,
	overlay              = 'none',
	bg                   = '',
	lg                   = '',
	sm                   = ''
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

return ui

