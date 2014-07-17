local game_save_overwrite  = require('game_save_overwrite')

local game_save_button_mt = {
	w = design_width * .35,
	h = design_height * .35
}

local hspace = design_width * .30 / 3
local vspace = design_height * .30 / 3

local new_texture
local save_texture

game_save_button_mt.__index = game_save_button_mt

function game_save_button_mt:contains(x, y)
	return x >= self.x and x <= self.x + self.w and y >= self.y and y <= self.y + self.h
end

function game_save_button_mt:touch()
	if ui.game_save_mode == 'loading' then
		ui.reset()
		gs.load(self.n)
		dofile('game_screen.lua')
	elseif ui.game_save_mode == 'saving' then
		game_save_overwrite.show = true
		game_save_overwrite.n = self.n
	end
end

function game_save_button_mt:draw()
	local texture
	local x
	local y
	local btn_font = fonts.create("fonts/CaviarDreams.ttf", 70)
	local date_font = fonts.create("fonts/CaviarDreams.ttf", 52)
	local bg = 'save_bg_' .. self.n
	local date = 'save_date_' .. self.n
	if not sf[bg] then
		set_draw_color(155, 60, 60, 255)
		fill_rect(self.x, self.y, self.w, self.h)
		if ui.game_save_mode == 'saving' then 
			save_texture = btn_font:text("NEW SAVE", light)
			x = self.x + self.w / 2 - save_texture.w / 2
			y = self.y + self.h / 2 - save_texture.h / 2
			save_texture:draw(x, y)
		elseif ui.game_save_mode == 'loading' then
			new_texture = btn_font:text("NEW GAME", light)
			x = self.x + self.w / 2 - new_texture.w / 2
			y = self.y + self.h / 2 - new_texture.h / 2
			new_texture:draw(x, y)
		else
			msgbox('ui.game_save_mode not set for game_save_button.lua')
		end
	else
		texture = textures.image(sf[bg])
		texture:draw(self.x, self.y, self.w, self.h)
	end
	if sf[date] then
		texture = date_font:text(sf[date], light)
		texture:draw(self.x + 10, self.y + self.h + 10)
	end
end

local function create_button(n)
	local x = hspace
	local y = 20
	local dx = game_save_button_mt.w + hspace
	local dy = game_save_button_mt.h + vspace
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

