local warning_texture
local statement_texture_1
local statement_texture_2
local ok_button
local exit_button

local warning_font   = fonts.create("fonts/CaviarDreams.ttf", 120)
local statement_font = fonts.create("fonts/CaviarDreams.ttf", 72)
local button_font    = fonts.create("fonts/CaviarDreams.ttf", 90)

function draw()
	set_draw_color(40, 40, 40, 255)
	render_clear()

	-- Create textures.

	warning_texture     = warning_font:text("WARNING", light)
	statement_texture_1 = statement_font:text("This novel contains sexual content and depictions", light)
	statement_texture_2 = statement_font:text("of violence that may be unsuitable for children.", light)
	local ok_texture    = button_font:text("PLAY", light)
	local exit_texture  = button_font:text("EXIT", light)

	-- Render textures and buttons.

	local x  = (design_width - warning_texture.w) / 2
	local y  = 200
	warning_texture:draw(x, y)

	x  = (design_width - statement_texture_1.w) / 2
	y = y + 300
	statement_texture_1:draw(x, y)
	y = y + 100
	statement_texture_2:draw(x, y)

	x = design_width / 3 - ok_texture.w / 2
	y = y + 300
	ok_button = buttons.create_from_texture(ok_texture, x, y)
	x = 2 * design_width / 3 - exit_texture.w / 2
	exit_button = buttons.create_from_texture(exit_texture, x, y)

	ok_button:draw()
	exit_button:draw()

	render()
end

function on_update()
end

function on_touch(x, y)
	if ok_button:contains(x, y) then 
		dofile('title_screen.lua')
	elseif exit_button:contains(x, y) then
		quit()
	end
end

draw()

