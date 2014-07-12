local ui_background = {}
-- bg = name of background image
-- sm = name of small portrait
-- lg = name of large portrait

-- Store texture references so that textures are not garbage collected.
local bg_texture
local sm_texture
local lg_texture

function ui_background.draw_sm()
	if ui.sm and string.len(ui.sm) > 0 then
		sm_texture = textures.image(ui.sm)
		sm_texture:draw(69, 289, 160, 240)
	else
		sm_button = nil
	end
end

function ui_background.draw()
	if ui.bg and string.len(ui.bg) > 0 then
		bg_texture = textures.image(ui.bg)
		bg_texture:draw()
	else
		bg_button = nil
	end
--	if not ui_hud.show then 
		ui_background.draw_sm() 
--	end
	if ui.lg and string.len(ui.lg) > 0 then
		lg_texture = textures.image(ui.lg)
		lg_texture:draw(568, 20, 400, 800)
	else
		lg_button = nil
	end
end

return ui_background

