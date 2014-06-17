--local day_font  = fonts.create("fonts/Caviar_Dreams_Bold.ttf", 25)
local menu_font = fonts.create("fonts/CaviarDreams.ttf", 60)
local menu_color = white

local main, next
local bar, di1, fs, wi, di2, ex -- menu bar and components

-- ex is the exit button.
-- fs is the fullscreen button.
-- wi is the windowed button.

-- dimensions: 2560 by 1440

function on_render_targets_reset()
	set_draw_color(255, 255, 255, 255)
	render_clear()

	main:draw()
	next:draw()

	bar:draw()
	di1:draw()
	if app_fullscreen then wi:draw() else fs:draw() end
	di2:draw()
	ex:draw()
	render()
end

function on_render_device_reset()
	local bar_texture = textures.image('gui/UI-border-bottom.png')
	bar = buttons.create_from_texture(bar_texture, 0, 1330)

	--ui_diamond_white = texture_from_file('gui/UI-diamond-white.png')

	local di_texture = textures.image('gui/UI-diamond-black.png')
	local ex_texture = menu_font:text("EXIT", menu_color)
	local fs_texture = menu_font:text("FULLSCREEN", menu_color)
	local wi_texture = menu_font:text("WINDOWED", menu_color)

	di1 = buttons.create_from_texture(di_texture, 1845, 1365)
	fs  = buttons.create_from_texture(fs_texture, 1900, 1350)
	wi  = buttons.create_from_texture(wi_texture, 1900, 1350)

	di2 = buttons.create_from_texture(di_texture, 2285, 1365)
	ex  = buttons.create_from_texture(ex_texture, 2340, 1350)

	local main_texture = textures.image('gui/UI-main.png')
	main = buttons.create_from_texture(main_texture, 0, 780)

	local next_texture = textures.image('gui/UI-button-next.png')
	next = buttons.create_from_texture(next_texture, 2395, 1110)

	on_render_targets_reset()
end

function on_update()
end

function on_touch(x, y)
	if ex and ex:contains(x, y) then 
		--dofile('screens/title.lua')
		quit()
	elseif next:contains(x, y) then
		dofile('screens/title.lua')
	elseif app_fullscreen and wi:contains(x, y) then
		windowed()
		app_fullscreen = false
	elseif not app_fullscreen and fs:contains(x, y) then
		fullscreen()
		app_fullscreen = true
	end
end

on_render_device_reset()

set_window_size(800, 450)
set_window_position(100, 100)

