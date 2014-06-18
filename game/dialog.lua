-- dimensions: 2560 by 1440

local name_font = fonts.create("fonts/Caviar_Dreams_Bold.ttf", 60)
local dialog_font = fonts.create("fonts/Caviar_Dreams_Bold.ttf", 60)

local dialog = {}

local lg_portrait
local main_area
local name_button
local next_button
local sm_portrait

local d

function dialog.draw()
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
end

function dialog.load_textures()
	if dialog.lg then
		local lg_texture = textures.image(dialog.lg)
		lg_portrait = buttons.create_from_texture(lg_texture, 1870, 447)
	else
		lg_portrait = nil
	end
	if dialog.sm then
		local sm_texture = textures.image(dialog.sm)
		sm_portrait = buttons.create_from_texture(sm_texture, 60, 780)
	else
		sm_portrait = nil
	end
	if dialog.name then
		local name_center_x = 955
		local name_center_y = 886
		local name_texture = name_font:text(dialog.name, white)
		local x = name_center_x - name_texture.w / 2
		local y = name_center_y - name_texture.h / 2
		name_button = buttons.create_from_texture(name_texture, x, y)
	else
		name_button = nil
	end
	if dialog.d then
		local x = 720
		local y = 1005
		d = {}
		for i, v in ipairs(dialog.d) do
			local d_texture = dialog_font:text(v, black)
			table.insert(d, buttons.create_from_texture(d_texture, x, y))
			y = y + d_texture.h + 4
		end
	else d = nil end
			
	local main_area_texture   = textures.image('gui/UI-main.png')
	local next_button_texture = textures.image('gui/UI-button-next.png')
	main_area   = buttons.create_from_texture(main_area_texture, 0, 780)
	next_button = buttons.create_from_texture(next_button_texture, 2395, 1110)
end

function dialog.on_touch(x, y)
	if next_button:contains(x, y) then
		msgbox("next pressed")
	end
end

return dialog

