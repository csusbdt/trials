-- dimensions: 2560 by 1440

local dialog = {}

local main_area
local next_button
local lg_portrait
local sm_portrait

function dialog.draw()
	if lg_portrait then lg_portrait:draw() end
	main_area:draw()
	next_button:draw()
	if sm_portrait then sm_portrait:draw() end
end

function dialog.load_textures()
	if dialog.lg then
		local lg_texture = textures.image(dialog.lg)
		lg_portrait = buttons.create_from_texture(lg_texture, 1870, 460)
	else
		lg_portrait = nil
	end
	if dialog.sm then
		local sm_texture = textures.image(dialog.sm)
		sm_portrait = buttons.create_from_texture(sm_texture, 60, 780)
	else
		sm_portrait = nil
	end
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

