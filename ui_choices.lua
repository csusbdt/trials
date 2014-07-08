local ui_choices = { c = nil }  
-- c is an array of choice objects
-- a choice object is { t = text, f = click handler } where f can be nil

local choice_font = fonts.create("fonts/Delicious-Roman.otf", 24)

local choice_buttons = nil

function ui_choices.empty() 
	return ui_choices.c == nil 
end


function ui_choices.draw()
	if ui_choices.c then
		if #ui_choices.c > 3 then mgbox("Too many choices."); return end
		choice_buttons = {}
		local x  = 100
		local y  = 100
		local dy =  30
		for i, v in ipairs(ui_choices.c) do
			local texture = choice_font:text(v.t, black)
			choice_buttons[i] = buttons.create_from_texture(texture, x, y)
			choice_buttons[i].f = v.f
			choice_buttons[i]:draw()
			y = y + dy
		end
	end
end

function ui_choices.on_touch(x, y)
	if not choice_buttons then return false end
	for i, v in ipairs(choice_buttons) do
		if v:contains(x, y) then 
			ui_choices.c = nil
			if v.f then v.f() end
			draw()
			return true
		end
	end
	return false
end

return ui_choices

