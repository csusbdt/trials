-- dimensions: 2560 by 1440

local menu_font = fonts.create("fonts/CaviarDreams.ttf", 60)
local menu_color = white

local back_button
local fullscreen_button
local windowed_button
local quit_button

local function load_textures()
	local back_texture       = menu_font:text("BACK",       menu_color)
	local fullscreen_texture = menu_font:text("FULLSCREEN", menu_color)
	local windowed_texture   = menu_font:text("WINDOWED",   menu_color)
	local quit_texture       = menu_font:text("QUIT",       menu_color)

	local x = 1000
	local y = 700
	local dy = 90
	back_button       = buttons.create_from_texture(back_texture,       x, y); y = y + dy
	fullscreen_button = buttons.create_from_texture(fullscreen_texture, x, y)
	windowed_button   = buttons.create_from_texture(windowed_texture,   x, y); y = y + dy
	quit_button       = buttons.create_from_texture(quit_texture,       x, y)
end

local function draw()
	set_draw_color(0, 0, 0, 255)
	render_clear()
	back_button:draw()
	if app_fullscreen then 
		windowed_button:draw() 
	else 
		fullscreen_button:draw() 
	end
	quit_button:draw()
	render()
end

function on_render_targets_reset()
	draw()
end

function on_render_device_reset()
	load_textures()
	draw()
end

function on_update()
end

function on_touch(x, y)
	if back_button:contains(x, y) then 
		dofile('game/screen.lua')
	elseif app_fullscreen and windowed_button:contains(x, y) then
		windowed()
		app_fullscreen = false
		set_window_size(800, 450)
		set_window_position(100, 100)
	elseif not app_fullscreen and fullscreen_button:contains(x, y) then
		fullscreen()
		app_fullscreen = true
	elseif quit_button:contains(x, y) then
		quit()
	end
end

load_textures()
draw()

