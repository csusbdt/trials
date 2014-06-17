local menu_font = fonts.create("fonts/CaviarDreams.ttf", 60)
local menu_color = white

local bar
local exit_button

-- dimensions: 2560 by 1440

local function draw()
	bar:draw()
	exit_button:draw()
end

local function load_textures()
	local bar_texture = textures.image('gui/UI-border-bottom.png')
	bar = buttons.create_from_texture(bar_texture, 0, 1330)

	local exit_button_texture = menu_font:text("EXIT", menu_color)
	exit_button = buttons.create_from_texture(exit_button_texture, 2340, 1350)

--[[
	local di_texture = textures.image('gui/UI-diamond-black.png')
	local fs_texture = menu_font:text("FULLSCREEN", menu_color)
	local wi_texture = menu_font:text("WINDOWED", menu_color)

	di1 = buttons.create_from_texture(di_texture, 1845, 1365)
	fs  = buttons.create_from_texture(fs_texture, 1900, 1350)
	wi  = buttons.create_from_texture(wi_texture, 1900, 1350)

	di2 = buttons.create_from_texture(di_texture, 2285, 1365)
	ex  = buttons.create_from_texture(ex_texture, 2340, 1350)
--]]
end

local function on_touch(x, y)
	if exit_button:contains(x, y) then 
		dofile('menu/screen.lua')
	end
	return false
end

return {
	draw = draw,
	load_textures = load_textures,
	on_touch = on_touch
}

