ui_sound = {}

local item_font = fonts.create("fonts/CaviarDreams.ttf", 22)
local menu_font = fonts.create("fonts/CaviarDreams.ttf", 24)

local exit_button 

function ui_sound.draw()
	local texture
	local x = 100
	local y = 100

	texture = menu_font:text("Sound and Music Level Adjustment", white)
	texture:draw(x, y)
	y = y + 100
	texture = menu_font:text("EXIT", white)
	exit_button = buttons.create_from_texture(texture, x, y)

	exit_button : draw()
end

function ui_sound.on_touch(x, y)
	if exit_button:contains(x, y) then 
		ui_sound.show = false
		return true
	end
	return false
end

return ui_sound

