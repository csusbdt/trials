local game_choices = {}  
-- c is an array of choice objects
-- a choice object is { t = text, f = click handler } where f can be nil

local choice_font = fonts.create("fonts/Delicious-Roman.otf", 60)

local choice_buttons = nil

function game_choices.draw()
	if #ui.c > 5 then msgbox("Too many choices."); return end

	local option_button_texture = textures.image('gui/UI-option-button.png')

	choice_buttons = {}
	local x  = 300
	local y  = 200 - 20 * #ui.c
	local dy =  option_button_texture.h * 1.2
	for i, v in ipairs(ui.c) do
		choice_buttons[i] = buttons.create_from_texture(option_button_texture, x, y)
		choice_buttons[i].node = v.node
		choice_buttons[i].f = v.f
		choice_buttons[i]:draw()
		local texture = choice_font:text(v.t, white)
		local text_x = x + 40
		local text_y = y + option_button_texture.h / 2 - texture.h / 2 - 8
		texture:draw(text_x, text_y)
		y = y + dy
	end
end

function game_choices.on_touch(x, y)
	if not choice_buttons then return false end
	for i, v in ipairs(choice_buttons) do
		if v:contains(x, y) then 
			ui.c = nil
			if v.f then v.f() end
			if v.node then
				ui.node = v.node
				qu.next()
				draw()
				return
			end
			return true
		end
	end
	return false
end

return game_choices

