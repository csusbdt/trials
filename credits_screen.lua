local description_font   = fonts.create("fonts/CaviarDreams.ttf", 32)
local button_font = fonts.create("fonts/CaviarDreams.ttf", 36)

local description_texture
local exit_button

function draw()
	set_draw_color(40, 40, 40, 255)
	render_clear()

	-- Create textures.

	local description_texture = button_font:text("This is a stub for the credits screen." , light)
	local exit_texture  = button_font:text("EXIT"    , light)

	-- Create buttons.

	exit_button = buttons.create_from_texture(exit_texture, 200, 200)

	-- Render textures and buttons.

	description_texture : draw(100, 100)
	exit_button   : draw()

	render()
end

function on_update()
end

function on_touch(x, y)
	if exit_button:contains(x, y) then
		dofile('title_screen.lua')
	end
end

draw()

