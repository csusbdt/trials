local title_font = fonts.create("fonts/CaviarDreams.ttf", 82)
local line_font = fonts.create("fonts/CaviarDreams.ttf", 48)

local exit_button
local line_y

local function draw_line(line)
	texture = line_font:text(line, ui.overlay_button_color)
	local x = design_width / 2 - texture.w / 2
	texture:draw(x, line_y)
	line_y = line_y + texture.h * 1.618
end

function draw()
	set_draw_color(ui.overlay_r, ui.overlay_g, ui.overlay_b, ui.overlay_a)
	render_clear()
	local texture
	local x 
	local y = 100

	texture = title_font:text("CREDITS", ui.overlay_button_color)
	x = design_width / 2 - texture.w / 2
	y = 0.618 * texture.h
	texture:draw(x, y)

	line_y = 250
	draw_line("Leigh-ann Griswould : Designer, Writer, Character Artist")
	draw_line("Eli Salazar : Background Art, Finishing")
	draw_line("Deanna Sulli : UI Design")
	draw_line("Abigail Williams : Music Composition, Sound Effects")
	draw_line("Scott Vance : Advisement Music/Sound")
	draw_line("David Turner : Lead Programmer")
	draw_line("Mark Swoope : Programmer")
	draw_line("Mark Sorriano : Advisement Graphics Programming")
	draw_line("Beth Steffel : Advisement Art")
	draw_line("Arturo Concepcion : Management")

	texture = title_font:text("BACK", ui.overlay_button_color)
	x = design_width / 2 - texture.w / 2
	y = design_height - 1.618 * texture.h
	exit_button = buttons.create_from_texture(texture, x, y)
	exit_button:draw()

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

