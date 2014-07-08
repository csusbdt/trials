local ui_dialog = {}
-- bg = name of background image
-- sm = name of small portrait
-- lg = name of large portrait
-- n  = name of person talking
-- d  = array of dialog objects

local name_font   = fonts.create("fonts/CaviarDreams.ttf", 30)
local dialog_font = fonts.create("fonts/Delicious-Roman.otf", 18)

--local bg_name
--local sm_portrait_name
--local lg_portrait_name

--dialog = {} -- contains: bg, lg, sm, name, d

-- Note: most "buttons" are just images and do not have click handlers. 
local main_area_button
local next_button
local bg_button
local sm_portrait
local lg_button
local n_button
local d_buttons

function ui_dialog.draw()
	local texture -- reusable temporary variable
	if ui_dialog.bg and string.len(ui_dialog.bg) > 0 then
		texture = textures.image(ui_dialog.bg)
		bg_button = buttons.create_from_texture(texture)
	else
		bg_button = nil
	end
	if ui_dialog.lg and string.len(ui_dialog.lg) > 0 then
		texture = textures.image(ui_dialog.lg)
		lg_button = buttons.create_from_texture(texture, 568, 20, 400, 800)
	else
		lg_button = nil
	end
	if ui_dialog.sm and string.len(ui_dialog.sm) > 0 then
		texture = textures.image(ui_dialog.sm)
		sm_button = buttons.create_from_texture(texture, 69, 289, 160, 240)
	else
		sm_button = nil
	end
	if ui_dialog.n and string.len(ui_dialog.n) > 0 then
		local name_center_x = 385
		local name_center_y = 353
		texture = name_font:text(ui_dialog.n, white)
		local x = name_center_x - texture.w / 2
		local y = name_center_y - texture.h / 2
		n_button = buttons.create_from_texture(texture, x, y)
	else
		n_button = nil
	end
	if ui_dialog.d and #ui_dialog.d > 0 then
		local x = 300
		local y = 400
		d_buttons = {}
		for i, v in ipairs(ui_dialog.d) do
			texture = dialog_font:text(v, black)
			table.insert(d_buttons, buttons.create_from_texture(texture, x, y))
			y = y + texture.h + 4
		end
	else d_buttons = nil end
			
	texture   = textures.image('ui/UI-mobile-main.png')
	main_area_button   = buttons.create_from_texture(texture, 0, 312)

	texture = textures.image('ui/UI-mobile-button-next.png')
	next_button = buttons.create_from_texture(texture, 958, 444)

	if bg_button then bg_button:draw() end

	if lg_button then lg_button:draw() end

	main_area_button:draw()

	if n_button then n_button:draw() end

	next_button:draw()

	if sm_button then sm_button:draw() end

	if d_buttons then
		for i, v in ipairs(d_buttons) do
			v:draw()
		end
	end
end

function ui_dialog.on_touch(x, y)
	if next_button:contains(x, y) and next then
		next()
		draw()
		return true
	end
	return false
end

return ui_dialog

