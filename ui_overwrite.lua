ui_overwrite = {}

local question_font = fonts.create("fonts/CaviarDreams.ttf", 22)
local button_font = fonts.create("fonts/CaviarDreams.ttf", 24)

local question_texture
local ok_button 
local cancel_button 

function ui_overwrite.draw()

	-- Display overlay background.

	local overlay_w = 500 
	local overlay_h = 200
	local overlay_x = (design_width  - overlay_w) / 2
	local overlay_y = (design_height - overlay_h) / 2

        blendmode_blend()
        set_draw_color(180, 180, 180, 180)
        fill_rect(overlay_x, overlay_y, overlay_w, overlay_h)

	local x = overlay_x + 30
	local y = overlay_y + 30

	question_texture = question_font:text("Do you wish to overwrite existing save file?", dark)
	question_texture:draw(x, y)

	y = y + 100
	local texture
	texture = button_font:text("OK", dark)
	ok_button = buttons.create_from_texture(texture, x, y)
	ok_button : draw()

	x = x + 100
	texture = button_font:text("CANCEL", dark)
	cancel_button = buttons.create_from_texture(texture, x, y)
	cancel_button : draw()
end

function ui_overwrite.on_touch(x, y)
	if ok_button:contains(x, y) then 
		ui_overwrite.confirm = true
		ui_overwrite.show = false
		return true
	end
	if cancel_button:contains(x, y) then 
		ui_overwrite.confirm = false
		ui_overwrite.show = false
		return true
	end
	return false
end

return ui_overwrite

