local button_font = fonts.create("fonts/CaviarDreams.ttf", 82)

local new_game_button
local load_button
local gallery_button
local credits_button
local exit_button

function draw()
	set_draw_color(40, 40, 40, 255)
	render_clear()

	-- Create textures.

	local new_game_texture = button_font:text("NEW GAME" , light)
	local load_texture     = button_font:text("LOAD"     , light)
	local gallery_texture  = button_font:text("GALLERY"  , light)
	local credits_texture  = button_font:text("CREDITS"  , light)
	local exit_texture     = button_font:text("EXIT"     , light)

	-- Create buttons.

	local x  = design_width / 2 - new_game_texture.w / 2
	local y  = 400
	local dy =  new_game_texture.h + 20
	new_game_button = buttons.create_from_texture(new_game_texture, x, y)
	y = y + dy
	load_button = buttons.create_from_texture(load_texture, x, y)
	y = y + dy
	gallery_button = buttons.create_from_texture(gallery_texture, x, y)
	y = y + dy
	credits_button = buttons.create_from_texture(credits_texture, x, y)
	y = y + dy
	exit_button = buttons.create_from_texture(exit_texture, x, y)

	-- Render buttons.

	new_game_button : draw()
	load_button     : draw()
	gallery_button  : draw()
	credits_button  : draw()
	exit_button     : draw()

	render()
end

function on_update()
end

function on_touch(x, y)
	if new_game_button:contains(x, y) then 
		log.reset()
		qu.reset()
		ui.reset()
		gs.reset()
		dofile(gs.node)
		dofile('game_screen.lua')
		qu.next()
		draw()
	elseif load_button:contains(x, y) then 
		ui.game_save_mode = 'loading'
		dofile('game_save_screen.lua')
	elseif gallery_button:contains(x, y) then 
		dofile('gallery_screen.lua')
	elseif credits_button:contains(x, y) then 
		dofile('credits_screen.lua')
	elseif exit_button:contains(x, y) then
		quit()
	end
end

draw()

