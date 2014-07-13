game_sound = {}

local item_font = fonts.create("fonts/CaviarDreams.ttf", 22)
local menu_font = fonts.create("fonts/CaviarDreams.ttf", 24)

local exit_button 

function game_sound.draw()

	-- Display overlay background.

	local overlay_w = 500
	local overlay_h = 250
	local overlay_x = (design_width  - overlay_w) / 2
	local overlay_y = (design_height - overlay_h) / 2

        blendmode_blend()
        set_draw_color(ui.overlay_r, ui.overlay_g, ui.overlay_b, ui.overlay_a)
        fill_rect(overlay_x, overlay_y, overlay_w, overlay_h)
        blendmode_none()

	local x = overlay_x + 30
	local y = overlay_y + 30

	local texture
	local dy = 30

	texture = ui.overlay_text_font:text("Sound and Music Level Adjustment", ui.overlay_text_color)
	texture:draw(x, y)
	y = overlay_y + overlay_h - 40
	texture = ui.overlay_button_font:text("EXIT", ui.overlay_button_color)
	exit_button = buttons.create_from_texture(texture, x, y)

	exit_button : draw()
end

function game_sound.on_touch(x, y)
	if exit_button:contains(x, y) then 
		game_sound.show = false
		return true
	end
	return false
end

return game_sound

