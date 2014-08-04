game_sound = {}

--local item_font = fonts.create("fonts/CaviarDreams.ttf", 22)
--local menu_font = fonts.create("fonts/CaviarDreams.ttf", 24)

local exit_button 
local down_button 
local up_button 

function game_sound.draw()
	draw_grey_overlay()
	-- Display overlay background.

	local overlay_w = 1000
	local overlay_h = 700
	local overlay_x = (design_width  - overlay_w) / 2
	local overlay_y = (design_height - overlay_h) / 2

        blendmode_blend()
        set_draw_color(ui.overlay_r, ui.overlay_g, ui.overlay_b, ui.overlay_a)
        fill_rect(overlay_x, overlay_y, overlay_w, overlay_h)
        blendmode_none()

	local x = overlay_x + 70
	local y = overlay_y + 100

	local texture

	texture = ui.overlay_text_font:text("Volume Adjustment", ui.overlay_text_color)
	x = overlay_x + (overlay_w - texture.w) / 2
	texture:draw(x, y)

	local vol = get_volume()
	texture = ui.overlay_text_font:text('X', ui.overlay_text_color)
	y = y + 100
	x = overlay_x + overlay_w / 2 - 150 + vol * 300
	texture:draw(x, y)

	texture = ui.overlay_button_font:text('DOWN', ui.overlay_text_color)
	y = y + 100
	x = overlay_x + (overlay_w - texture.w) / 3
	down_button = buttons.create_from_texture(texture, x, y)
	down_button:draw()

	texture = ui.overlay_button_font:text('UP', ui.overlay_text_color)
	x = overlay_x + 2 * (overlay_w - texture.w) / 3
	up_button = buttons.create_from_texture(texture, x, y)
	up_button:draw()

	texture = ui.overlay_button_font:text("EXIT", ui.overlay_button_color)
	y = overlay_y + overlay_h - 200
	x = overlay_x + (overlay_w - texture.w) / 2
	exit_button = buttons.create_from_texture(texture, x, y)
	exit_button : draw()
end

function game_sound.on_touch(x, y)
	if exit_button:contains(x, y) then 
		ui.overlay = 'none'
		return true
	elseif down_button:contains(x, y) then
		local vol = get_volume()
		vol = vol - .05
		if vol < 0 then vol = 0 end
		set_volume(vol)
		return true
	elseif up_button:contains(x, y) then
		local vol = get_volume()
		vol = vol + .05
		if vol > 1 then vol = 1 end
		set_volume(vol)
		return true
	end
	return false
end

return game_sound

