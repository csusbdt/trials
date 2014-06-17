-- Screen design size is 800 by 450.

local button_color = { r = 205, g = 205, b = 205 }

local title
local continue_button
local restart_button
local exit_button
local fullscreen_button
local windowed_button

local function create_title(text, x, y)
	local f = fonts.create("fonts/DroidSansMono.ttf", 32)
	local t = f:text(text, {r=255, g=100, b=100})
	return buttons.create_from_texture(t, x, y)
end

local function create_button(text, x, y)
	local f = fonts.create("fonts/DroidSansMono.ttf", 22)
	local t = f:text(text, button_color)
	return buttons.create_from_texture(t, x, y)
end

function on_render_targets_reset()
	title             : draw()
	continue_button   : draw()
	restart_button    : draw()
	exit_button       : draw()
	if app_fullscreen then
		windowed_button : draw()
	else
		fullscreen_button : draw()
	end
	render()
end

function on_render_device_reset()
	local x = 50
	local y = 100
	local dy = 40
	title             = create_title ("Trials of the damned", 120,  50)
	continue_button   = create_button("Continue"            ,  x, y) ; y = y + dy
	restart_button    = create_button("Restart story"       ,  x, y) ; y = y + dy
	exit_button       = create_button("Exit"                ,  x, y) ; y = y + dy
	fullscreen_button = create_button("Fullscreen"          ,  x, y) 
	windowed_button   = create_button("Windowed"            ,  x, y)
	on_render_targets_reset()
end

function on_update()
end

function on_touch(x, y)
	if continue_button:contains(x, y) then
		dofile('screens/story.lua')
	elseif restart_button:contains(x, y) then
		sf.clear()
		sf.current_node = 'start'
		dofile('screens/game.lua')
	elseif exit_button:contains(x, y) then
		quit()
	elseif not app_fullscreen and fullscreen_button:contains(x, y) then
		fullscreen()
		app_fullscreen = true
	elseif app_fullscreen and windowed_button:contains(x, y) then
		windowed()
		app_fullscreen = false
	end
end

-- music.set('music/MushroomForest.wav')

on_render_device_reset()
collectgarbage()

