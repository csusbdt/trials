local ui_hud = { show = true }
-- n  = name of person talking
-- d  = array of dialog objects
-- date = date to display

local game_background = require('game_background')
local game_menu       = require('game_menu')
local game_choices    = require('game_choices')
--local game_log        = require('game_log')
local ui_sound      = require('ui_sound')

local name_font   = fonts.create("fonts/CaviarDreams.ttf", 30)
local dialog_font = fonts.create("fonts/Delicious-Roman.otf", 18)
local date_font   = fonts.create("fonts/CaviarDreams.ttf", 22)

local main_texture
local next_texture
local bar_texture
local white_diamond_texture
local menu_button
local hide_button

local name_texture
local date_texture
local dialog_textures

function ui_hud.draw()
	-- Create textures.

	main_texture = textures.image('ui/UI-mobile-main.png')
	next_texture = textures.image('ui/UI-mobile-button-next.png')
	bar_texture = textures.image('ui/UI-mobile-border-bottom.png')
	white_diamond_texture = textures.image('ui/UI-mobile-diamond-white.png')
	if ui.n and string.len(ui.n) > 0 then
		name_texture = name_font:text(ui.n, white)
	else
		name_texture = nil
	end
	if ui.date and string.len(ui.date) > 0 then
		date_texture = date_font:text(ui.date, white)
	else
		date_texture = nil
	end
	if ui.d and #ui.d > 0 then
		local x = 300
		local y = 400
		dialog_textures = {}
		for i, v in ipairs(ui.d) do
			dialog_textures[i] = dialog_font:text(v, black)
			dialog_textures[i]:draw(x, y)
			y = y + dialog_textures[i].h + 20
		end
	else 
		dialog_textures = nil 
	end

	local hide_texture = textures.image('ui/UI-mobile-diamond-black.png')
	local menu_texture = date_font:text('MENU', white)

	-- Render textures.

	main_texture:draw(0, 312)
	next_texture:draw(958, 444)
	if name_texture then 
		local x = 385 - name_texture.w / 2
		local y = 353 - name_texture.h / 2
		name_texture:draw(x, y)
	end

	if ui.d and #ui.d > 0 then
		local x = 300
		local y = 400
		dialog_textures = {}
		for i, v in ipairs(ui.d) do
			texture = dialog_font:text(v, black)
			texture:draw(x, y)
			y = y + texture.h + 4
		end
	else d_buttons = nil end

	local space     = 12
	local x         = 136 - (white_diamond_texture.w + space + date_texture.w) / 2
	local bar_y     = 576 - 61
	local diamond_y = 576 - 31 - white_diamond_texture.h / 2
	local date_y    = 576 - 31 - date_texture.h / 2

	bar_texture:draw(0, bar_y)

	white_diamond_texture:draw(x, diamond_y)
	x = x + white_diamond_texture.w + space
	date_texture:draw(x, date_y)
	x = x + date_texture.w + space
	white_diamond_texture:draw(x, diamond_y)

	-- Use the name as a temporary button texture for the menu.
	x = design_width - 140
	menu_button = buttons.create_from_texture(menu_texture, x, date_y)
	menu_button:draw()
	x = design_width - 30
	hide_button = buttons.create_from_texture(hide_texture, x, diamond_y)
	hide_button:draw()

	game_background.draw_sm()
end

function ui_hud.on_touch(x, y)
	if hide_button:contains(x, y) then
		ui_hud.show = false
		draw()
		return true
	end
	if menu_button:contains(x, y) then
		game_menu.show = not game_menu.show
		draw()
		return true
	end
	if game_menu.show then return false end
	if ui_sound.show then return false end
	if ui.c then
		if game_choices.on_touch(x, y) then
			draw()
			return true
		end
	else
		next()
		draw()
		return true
	end
	return false
end

return ui_hud

