local game_choices = {}  
-- c is an array of choice objects
-- a choice object is { t = text, f = click handler } where f can be nil

local choice_font = fonts.create("fonts/Delicious-Roman.otf", 70)

local choice_buttons = nil

function game_choices.draw()
	if #ui.c > 3 then mgbox("Too many choices."); return end

	choice_buttons = {}
	local x  = 300
	local y  = 200
	local dy =  90
	for i, v in ipairs(ui.c) do
		local texture = choice_font:text(v.t, black)
		choice_buttons[i] = buttons.create_from_texture(texture, x, y)
		choice_buttons[i].f = v.f
		choice_buttons[i]:draw()
		y = y + dy
	end
end

function game_choices.on_touch(x, y)
	if not choice_buttons then return false end
	for i, v in ipairs(choice_buttons) do
		if v:contains(x, y) then 
			ui.c = nil
			if v.f then v.f() end
			return true
		end
	end
	return false
end

return game_choices

