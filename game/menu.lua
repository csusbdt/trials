-- dimensions: 2560 by 1440

local menu_font = fonts.create("fonts/CaviarDreams.ttf", 60)
local menu_color = white

local bar
local white_diamond_1
local date_button 
local white_diamond_2
local save_button 
local black_diamond_1
local load_button 
local black_diamond_2
local exit_button 

local function draw()
	bar		: draw()
	white_diamond_1	: draw()
	date_button	: draw()
	white_diamond_2	: draw()
	save_button	: draw()
	black_diamond_1	: draw()
	load_button	: draw()
	black_diamond_2	: draw()
	exit_button	: draw()
end

local function load_textures()
	local date_text = "June 6, Morning"

	local bar_texture             = textures.image('gui/UI-border-bottom.png')
	local white_diamond_texture   = textures.image('gui/UI-diamond-white.png')
	local black_diamond_texture   = textures.image('gui/UI-diamond-black.png')
	local date_button_texture     = menu_font:text(date_text,  menu_color)
	local save_button_texture     = menu_font:text("SAVE",     menu_color)
	local load_button_texture     = menu_font:text("LOAD",     menu_color)
	local exit_button_texture     = menu_font:text("EXIT",     menu_color)

	local x         = 120
	local space     = 30
	local bar_y     = 1330
	local diamond_y = 1330 + (110 - black_diamond_texture.h) / 2
	local text_y    = 1330 + (110 - save_button_texture.h) / 2

	bar = buttons.create_from_texture(bar_texture, 0, bar_y)
	white_diamond_1 = buttons.create_from_texture(white_diamond_texture, x, diamond_y)
	x = x + white_diamond_texture.w + space
	date_button = buttons.create_from_texture(date_button_texture, x, text_y)
	x = x + date_button_texture.w + space
	white_diamond_2 = buttons.create_from_texture(white_diamond_texture, x, diamond_y)
	x = x + white_diamond_texture.w + space
	x = 1880
	save_button = buttons.create_from_texture(save_button_texture, x, text_y)
	x = x + save_button.w + space
	black_diamond_1 = buttons.create_from_texture(black_diamond_texture, x, diamond_y)
	x = x + black_diamond_1.w + space
	load_button = buttons.create_from_texture(load_button_texture, x, text_y)
	x = x + load_button.w + space
	black_diamond_2 = buttons.create_from_texture(black_diamond_texture, x, diamond_y)
	x = x + black_diamond_2.w + space
	exit_button = buttons.create_from_texture(exit_button_texture, x, text_y)
end

local function on_touch(x, y)
	if date_button:contains(x, y) then
		msgbox('will show calendar')
		return true
	elseif save_button:contains(x, y) then 
		msgbox('saving')
		return true
	elseif load_button:contains(x, y) then 
		msgbox('loading')
		return true
	elseif exit_button:contains(x, y) then 
		dofile('menu/screen.lua')
		return true
	end
	return false
end

return {
	draw = draw,
	load_textures = load_textures,
	on_touch = on_touch
}

