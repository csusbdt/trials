local ui_menu = {}

-- Items:
-- resume - returns to game screen
-- save - transitions to load_save_screen.lua
-- log - displays log popup
-- sound - displays music and sound effects adjustment popup
-- exit - transitions to title screen

local ui_sound = require('ui_sound')
local ui_log   = require('ui_log')

local menu_font = fonts.create("fonts/CaviarDreams.ttf", 24)

local resume_button
local save_button
local log_button
local sound_button
local fullscreen_button
local exit_button

function ui_menu.draw()
	-- Display overlay background.

	local overlay_w = 300
	local overlay_h = 450
	local overlay_x = (design_width  - overlay_w) / 2
	local overlay_y = (design_height - overlay_h) / 2

        blendmode_blend()
        set_draw_color(ui.overlay_r, ui.overlay_g, ui.overlay_b, ui.overlay_a)
        fill_rect(overlay_x, overlay_y, overlay_w, overlay_h)

	local x = overlay_x + 30
	local y = overlay_y + 30

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

	local dy = 40
	resume_button     = buttons.create_from_texture(resume_texture, x, y)     ; y = y + dy
	save_button       = buttons.create_from_texture(save_texture, x, y)       ; y = y + dy
	log_button        = buttons.create_from_texture(log_texture, x, y)        ; y = y + dy
	sound_button      = buttons.create_from_texture(sound_texture, x, y)      ; y = y + dy
	fullscreen_button = buttons.create_from_texture(fullscreen_texture, x, y) ; y = y + dy
	exit_button       = buttons.create_from_texture(exit_texture, x, y)       ; y = y + dy

	-- Draw buttons.

	resume_button		: draw()
	save_button		: draw()
	log_button		: draw()
	sound_button		: draw()
	fullscreen_button	: draw()
	exit_button		: draw()
end

function ui_menu.on_touch(x, y)
	if resume_button:contains(x, y) then
		ui_menu.show = false
		return true
	end
	if save_button:contains(x, y) then 
		ui_menu.show = false
		ui.game_save_mode = 'saving'
		dofile('game_save_screen.lua')
		return true
	end
	if log_button:contains(x, y) then 
		ui_menu.show = false
		ui_log.show = true
		return true
	end
	if sound_button:contains(x, y) then 
		ui_menu.show = false
		ui_sound.show = true
		return true
	end
	if fullscreen_button:contains(x, y) then 
		if app_fullscreen then
			app_fullscreen = false
			windowed()
		else
			app_fullscreen = true
			fullscreen()
		end
		ui_menu.show = false
		return true
	end
	if exit_button:contains(x, y) then 
		ui_menu.show = false
		dofile('title_screen.lua')
		return true
	end
	return false
end

return ui_menu

