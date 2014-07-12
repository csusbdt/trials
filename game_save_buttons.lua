local ui_overwrite = require('ui_overwrite')

local game_save_button_mt = {
	w = 16 * 25, 
	h = 9 * 25
}

local new_texture
local save_texture

game_save_button_mt.__index = game_save_button_mt

function game_save_button_mt:contains(x, y)
	return x >= self.x and x <= self.x + self.w and y >= self.y and y <= self.y + self.h
end

function game_save_button_mt:touch()
	if ui.game_save_mode == 'loading' then
		gs.load(self.n)
		dofile('game_screen.lua')
	elseif ui.game_save_mode == 'saving' then
		ui_overwrite.show = true
		ui_overwrite.n = self.n
	end
end

function game_save_button_mt:draw()
	local btn_font = fonts.create("fonts/CaviarDreams.ttf", 40)
	local k = 'save_bg_' .. self.n
	if not sf[k] then
		set_draw_color(155, 60, 60, 255)
		fill_rect(self.x, self.y, self.w, self.h)
		if ui.game_save_mode == 'saving' then 
			save_texture = btn_font:text("Save new", light)
		elseif ui.game_save_mode == 'loading' then
			new_texture = btn_font:text("New game", light)
		else
			msgbox('ui.game_save_mode not set for game_save_button.lua')
		end
	else
		local texture = textures.image(sf[k])
		texture:draw(self.x, self.y, self.w, self.h)
	end
end

local function create_button(n)
	local x = 25
	local y = 25
	local dx = game_save_button_mt.w + 25
	local dy = game_save_button_mt.h + 25
	local b = { n = n }
	if n == 1 then b.x = x;      b.y = y      end
	if n == 2 then b.x = x + dx; b.y = y      end
	if n == 3 then b.x = x;      b.y = y + dy end
	if n == 4 then b.x = x + dx; b.y = y + dy end
	setmetatable(b, game_save_button_mt)
	return b
end

local function create_buttons()
	local btns = {}
	for i = 1, 4 do
		btns[i] = create_button(i)
	end
	return btns
end

return {
	create_buttons = create_buttons
}

