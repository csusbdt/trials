local menu = {}

local menu_font = fonts.create("fonts/CaviarDreams.ttf", 24)
local date_font = fonts.create("fonts/CaviarDreams.ttf", 22)

menu.date = "?"

local bar
local white_diamond_1
local date_button 
local white_diamond_2
local save_button 
local black_diamond_1
local load_button 
local black_diamond_2
local exit_button 

local function load_textures()
	local bar_texture             = textures.image('ui/UI-mobile-border-bottom.png')
	local white_diamond_texture   = textures.image('ui/UI-mobile-diamond-white.png')
	local black_diamond_texture   = textures.image('ui/UI-mobile-diamond-black.png')
	local date_button_texture     = date_font:text(menu.date,    black)
	local save_button_texture     = menu_font:text("SAVE",  white)
	local load_button_texture     = menu_font:text("LOAD",  white)
	local exit_button_texture     = menu_font:text("EXIT",  white)

	local space     = 12
	local x         = 136 - (white_diamond_texture.w + space + date_button_texture.w) / 2
	local bar_y     = 576 - 61
	local diamond_y = 576 - 31 - black_diamond_texture.h / 2
	local text_y    = 576 - 31 - save_button_texture.h / 2

	bar = buttons.create_from_texture(bar_texture, 0, bar_y)
	white_diamond_1 = buttons.create_from_texture(white_diamond_texture, x, diamond_y)
	x = x + white_diamond_texture.w + space
	date_button = buttons.create_from_texture(date_button_texture, x, text_y)
	x = x + date_button_texture.w + space
	white_diamond_2 = buttons.create_from_texture(white_diamond_texture, x, diamond_y)
	x = x + white_diamond_texture.w + space
	x = 752
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

function menu.draw()
	load_textures()
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

function menu.on_touch(x, y)
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
		dofile('menu_screen.lua')
		return true
	end
	return false
end

return menu

