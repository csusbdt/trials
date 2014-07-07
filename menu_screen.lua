local resume_button
local delete_progress_button
local fullscreen_button
local windowed_button
local quit_button

function load_textures()
	local menu_font = fonts.create("fonts/CaviarDreams.ttf", 40)
	local resume_texture     = menu_font:text("RESUME",     light)
	local delete_progress_texture     = menu_font:text("DELETE PROGRESS",     light)
	local fullscreen_texture = menu_font:text("FULLSCREEN", light)
	local windowed_texture   = menu_font:text("WINDOWED",   light)
	local quit_texture       = menu_font:text("QUIT",       light)

	local x  = 300
	local y  = 200
	local dy = 50
	resume_button     = buttons.create_from_texture(resume_texture,     x, y); y = y + dy
	delete_progress_button     = buttons.create_from_texture(delete_progress_texture,     x, y); y = y + dy
	fullscreen_button = buttons.create_from_texture(fullscreen_texture, x, y)
	windowed_button   = buttons.create_from_texture(windowed_texture,   x, y); y = y + dy
	quit_button       = buttons.create_from_texture(quit_texture,       x, y)
end

function draw()
	set_draw_color(40, 40, 40, 255)
	render_clear()
	resume_button:draw()
	delete_progress_button:draw()
	if app_fullscreen then 
		windowed_button:draw() 
	else 
		fullscreen_button:draw() 
	end
	quit_button:draw()
	render()
end

function on_update()
end

function on_touch(x, y)
	if resume_button:contains(x, y) then 
		dofile('game_screen.lua')
	elseif delete_progress_button:contains(x, y) then
		sf:clear()
		sf.node = 'nodes/start.lua'
	elseif app_fullscreen and windowed_button:contains(x, y) then
		windowed()
		app_fullscreen = false
	elseif not app_fullscreen and fullscreen_button:contains(x, y) then
		fullscreen()
		app_fullscreen = true
	elseif quit_button:contains(x, y) then
		quit()
	end
end

load_textures()
draw()
collectgarbage()

