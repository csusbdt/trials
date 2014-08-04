local game_menu = {}

-- Items:
-- resume - returns to game screen
-- save - transitions to load_save_screen.lua
-- log - displays log popup
-- sound - displays music and sound effects adjustment popup
-- exit - transitions to title screen

local game_sound = require('game_sound')

local menu_box_texture
local menu_option_texture

local resume_button
local save_button
local log_button
local sound_button
local fullscreen_button
local exit_button

local menu_option_font = fonts.create(menu_option_font_name, menu_option_font_size)

function game_menu.draw()

	menu_box_texture = textures.image('gui/UI-menu-box.png')

	local x = (design_width  - menu_box_texture.w) / 2
	local y = (design_height - menu_box_texture.h) / 2

	menu_box_texture:draw(x, y)

	menu_option_texture = textures.image('gui/UI-menu-option.png')

	x = x + (menu_box_texture.w - menu_option_texture.w) / 2

	local texture = menu_option_font:text("RESUME", menu_option_font_color)
	local text_offset_x = 30
	local text_offset_y = 18
	y = y + 60
	resume_button = buttons.create_from_texture(menu_option_texture, x, y)
	resume_button:draw()
	texture:draw(x + text_offset_x, y + text_offset_y)

	texture = menu_option_font:text("SAVE", menu_option_font_color)
	local dy = 130
	y = y + dy
	save_button = buttons.create_from_texture(menu_option_texture, x, y)
	save_button:draw()
	texture:draw(x + text_offset_x, y + text_offset_y)

	texture = menu_option_font:text("LOG", menu_option_font_color)
	y = y + dy
	log_button = buttons.create_from_texture(menu_option_texture, x, y)
	log_button:draw()
	texture:draw(x + text_offset_x, y + text_offset_y)

	texture = menu_option_font:text("SOUND", menu_option_font_color)
	y = y + dy
	sound_button = buttons.create_from_texture(menu_option_texture, x, y)
	sound_button:draw()
	texture:draw(x + text_offset_x, y + text_offset_y)

	texture = menu_option_font:text("FULLSCREEN", menu_option_font_color)
	y = y + dy
	fullscreen_button = buttons.create_from_texture(menu_option_texture, x, y)
	fullscreen_button:draw()
	texture:draw(x + text_offset_x, y + text_offset_y)

	texture = menu_option_font:text("EXIT", menu_option_font_color)
	y = y + dy
	exit_button = buttons.create_from_texture(menu_option_texture, x, y)
	exit_button:draw()
	texture:draw(x + text_offset_x, y + text_offset_y)

	-- Display overlay background.

	local overlay_w = 700
	local overlay_h = 1000
	local overlay_x = (design_width  - overlay_w) / 2
	local overlay_y = (design_height - overlay_h) / 2

        blendmode_blend()
        set_draw_color(ui.overlay_r, ui.overlay_g, ui.overlay_b, ui.overlay_a)
--        fill_rect(overlay_x, overlay_y, overlay_w, overlay_h)

	x = overlay_x + 100
	y = overlay_y + 70

	-- Create button images.

	local resume_texture = ui.overlay_button_font:text("RESUME", ui.overlay_text_color)
	local save_texture   = ui.overlay_button_font:text("SAVE", ui.overlay_text_color)
	local log_texture    = ui.overlay_button_font:text("LOG", ui.overlay_text_color)
	local sound_texture  = ui.overlay_button_font:text("SOUND", ui.overlay_text_color)
	local fullscreen_texture 
	if app_fullscreen then
		fullscreen_texture = ui.overlay_button_font:text("WINDOWED", ui.overlay_text_color)
	else
		fullscreen_texture = ui.overlay_button_font:text("FULLSCREEN", ui.overlay_text_color)
	end
	local exit_texture = ui.overlay_button_font:text("EXIT", ui.overlay_text_color)

	-- Create buttons.

	--local dy = resume_texture.h + 16
	--local resume_button_t     = buttons.create_from_texture(resume_texture, x, y)     ; y = y + dy
	--local save_button_t       = buttons.create_from_texture(save_texture, x, y)       ; y = y + dy
	--log_button        = buttons.create_from_texture(log_texture, x, y)        ; y = y + dy
	--sound_button      = buttons.create_from_texture(sound_texture, x, y)      ; y = y + dy
	--fullscreen_button = buttons.create_from_texture(fullscreen_texture, x, y) ; y = y + dy
	--exit_button       = buttons.create_from_texture(exit_texture, x, y)       ; y = y + dy

	-- Draw buttons.

--	resume_button		: draw()
--	save_button		: draw()
--	log_button		: draw()
--	sound_button		: draw()
--	fullscreen_button	: draw()
--	exit_button		: draw()
end

function game_menu.on_touch(x, y)
	if resume_button:contains(x, y) then
		ui.overlay = 'none'
		return true
	end
	if save_button:contains(x, y) then 
		ui.overlay = 'none'
		ui.game_save_mode = 'saving'
		dofile('game_save_screen.lua')
		return true
	end
	if log_button:contains(x, y) then 
		ui.overlay = 'log'
		return true
	end
	if sound_button:contains(x, y) then 
		ui.overlay = 'sound'
		return true
	end
	if fullscreen_button:contains(x, y) then 
		ui.overlay = 'none'
		if app_fullscreen then
			app_fullscreen = false
			windowed()
		else
			app_fullscreen = true
			fullscreen()
		end
		return true
	end
	if exit_button:contains(x, y) then 
		music.set(nil)
		dofile('title_screen.lua')
		return true
	end
	return false
end

return game_menu

