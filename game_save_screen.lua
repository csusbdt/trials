local game_save_buttons    = require('game_save_buttons')
local game_save_overwrite  = require('game_save_overwrite')

local exit_button

local btns = {}

function draw()
	set_draw_color(40, 40, 40, 255)
	render_clear()

	-- Create textures.

	local exit_texture = ui.overlay_button_font:text("EXIT" , light)

	-- Create buttons.

	exit_button = buttons.create_from_texture(exit_texture, exit_texture.w * .618, design_height - exit_texture.h * 1.618)
	btns = game_save_buttons.create_buttons()

	-- Render textures and buttons.

	exit_button:draw()

	for _, b in ipairs(btns) do b:draw() end

	if game_save_overwrite.show then game_save_overwrite.draw() end

	render()
end

function on_update()
end

function on_touch(x, y)
	if game_save_overwrite.show then
		if game_save_overwrite.on_touch(x, y) then
			game_save_overwrite.show = false
			if game_save_overwrite.confirm then
				gs.save(game_save_overwrite.n)
				dofile('game_screen.lua')
			else
				draw()
			end
			return true
		end
		return false
	end
	for i, b in ipairs(btns) do
		if b:contains(x, y) then
			b:touch()
			draw()
			return true
		end
	end
	if exit_button:contains(x, y) then
		if ui.game_save_mode == 'saving' then
			dofile('game_screen.lua')
		elseif ui.game_save_mode == 'loading' then
			dofile('title_screen.lua')
		else
			msgbox('ui.game_save_mode not set corretly for game_save_screen.lua')
		end
		return true
	end
	return false
end

draw()

