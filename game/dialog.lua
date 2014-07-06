local name_font   = fonts.create("fonts/CaviarDreams.ttf", 30)
local dialog_font = fonts.create("fonts/Delicious-Roman.otf", 18)
local choice_font = fonts.create("fonts/Delicious-Roman.otf", 24)

local dialog = {}

local bg
local lg_portrait
local main_area
local name_button
local next_button
local sm_portrait

local bg_name
local sm_portrait_name
local lg_portrait_name

local choices = {}

local d

local function load_textures()
	choices = {}
	if dialog.c then
		if #dialog.c > 3 then mgbox("Too many choices."); return end
		local choice_x  = 100
		local choice_y  = 100
		local choice_dy =  30
		for i, v in ipairs(dialog.c) do
			local c_texture = choice_font:text(v.t, black)
			choices[i] = buttons.create_from_texture(c_texture, choice_x, choice_y)
			choices[i].f = v.f
			choice_y = choice_y + choice_dy
		end
	end
	if dialog.bg and string.len(dialog.bg) > 0 then
		local bg_texture = textures.image(dialog.bg)
		bg = buttons.create_from_texture(bg_texture)
	else
		bg = nil
	end
	if dialog.lg and string.len(dialog.lg) > 0 then
		local lg_texture = textures.image(dialog.lg)
		lg_portrait = buttons.create_from_texture(lg_texture, 568, 20, 400, 800)
	else
		lg_portrait = nil
	end
	if dialog.sm and string.len(dialog.sm) > 0 then
		local sm_texture = textures.image(dialog.sm)
		sm_portrait = buttons.create_from_texture(sm_texture, 69, 289, 160, 240)
	else
		sm_portrait = nil
	end
	if dialog.name and string.len(dialog.name) > 0 then
		local name_center_x = 385
		local name_center_y = 353
		local name_texture = name_font:text(dialog.name, white)
		local x = name_center_x - name_texture.w / 2
		local y = name_center_y - name_texture.h / 2
		name_button = buttons.create_from_texture(name_texture, x, y)
	else
		name_button = nil
	end
	if dialog.d and #dialog.d > 0 then
		local x = 300
		local y = 400
		d = {}
		for i, v in ipairs(dialog.d) do
			local d_texture = dialog_font:text(v, black)
			table.insert(d, buttons.create_from_texture(d_texture, x, y))
			y = y + d_texture.h + 4
		end
	else d = nil end
			
	local main_area_texture   = textures.image('ui/UI-mobile-main.png')
	local next_button_texture = textures.image('ui/UI-mobile-button-next.png')
	main_area   = buttons.create_from_texture(main_area_texture, 0, 312)
	next_button = buttons.create_from_texture(next_button_texture, 958, 444)
end

function dialog.draw()
	load_textures()
	if bg then bg:draw() end
	if lg_portrait then lg_portrait:draw() end
	main_area:draw()
	if name_button then name_button:draw() end
	next_button:draw()
	if sm_portrait then sm_portrait:draw() end
	if d then
		for i, v in ipairs(d) do
			v:draw()
		end
	end
	for i, v in ipairs(choices) do
		v:draw()
	end
end

function dialog.on_touch(x, y)
	if not dialog.c and next_button:contains(x, y) then
		if next then next(); draw(); return end
	end
	for i, v in ipairs(choices) do
		if v:contains(x, y) then 
			if v.f then v.f() else dialog.c = nil end
			draw()
			return 
		end
	end
end

return dialog

