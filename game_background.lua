-- External dependencies:
-- ui.bg = name of background image
-- ui.sm = name of small portrait
-- ui.lg = name of large portrait

-- Store texture references so that textures are not garbage collected.
local bg_texture
local sm_texture
local lg_texture

local function draw_bg()
	if ui.bg and string.len(ui.bg) > 0 then
		bg_texture = textures.image(ui.bg)
		bg_texture:draw()
	else
		bg_button = nil
	end
end

local function draw_lg()
	if ui.lg and string.len(ui.lg) > 0 then
		lg_texture = textures.image(ui.lg)
		lg_texture:draw(568, 20, 400, 800)
	else
		lg_button = nil
	end
end

local function draw_sm()
	if ui.sm and string.len(ui.sm) > 0 then
		sm_texture = textures.image(ui.sm)
		sm_texture:draw(69, 289, 160, 240)
	else
		sm_button = nil
	end
end

function game_background.draw()
	draw_bg()
	draw_lg()
	if ui.background_only then 
		draw_sm()
	-- else sm will be drawn by game_
	end
end

return {
	draw_sm = draw_sm
}

