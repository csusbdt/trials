ui_overwrite = {}

local question_texture
local ok_button 
local cancel_button 

function ui_overwrite.draw()

	-- Display overlay background.

	local x
	local y
	local overlay_w = 1000 
	local overlay_h = 400
	local overlay_x = (design_width  - overlay_w) / 2
	local overlay_y = (design_height - overlay_h) / 2

        blendmode_blend()
        set_draw_color(ui.overlay_r, ui.overlay_g, ui.overlay_b, ui.overlay_a)
        fill_rect(overlay_x, overlay_y, overlay_w, overlay_h)

	question_texture = ui.overlay_text_font:text("Do you wish to overwrite existing save file?", ui.overlay_text_color)
	x = overlay_x + overlay_w / 2 - question_texture.w / 2
	y = overlay_y + overlay_h / 4
	question_texture:draw(x, y)

	local texture
	texture = ui.overlay_button_font:text("OK", ui.overlay_button_color)
	y = overlay_y + 5 * overlay_h / 8
	x = overlay_x + overlay_w / 3 - texture.w / 2
	ok_button = buttons.create_from_texture(texture, x, y)
	ok_button : draw()

	texture = ui.overlay_button_font:text("CANCEL", ui.overlay_button_color)
	x = overlay_x + 2 * overlay_w / 3 - texture.w / 2
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

