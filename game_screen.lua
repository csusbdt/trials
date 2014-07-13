local ui_hud        = require('ui_hud')
local game_log        = require('game_log')
local game_sound      = require('game_sound')
local game_menu       = require('game_menu')
local game_choices    = require('game_choices')
local game_background = require('game_background')

function draw()
	set_draw_color(0, 0, 0, 255)
	render_clear()
	game_background.draw()
	if ui_hud.show then 
		ui_hud.draw() 
		if ui.c then game_choices.draw() end
		if     game_log.show   then game_log.draw()
		elseif game_menu.show  then game_menu.draw()
		elseif game_sound.show then game_sound.draw()
		end
	end
	render()
end

function on_update()
end

function on_touch(x, y)
	if not ui_hud.show then
		ui_hud.show = true
		draw()
		return true
	end
	if game_log.show then
		if game_log.on_touch(x, y) then draw() end
		return true 
	end
	if game_sound.show then
		if game_sound.on_touch(x, y) then draw() end
		return true 
	end
	if game_menu.show then
		if game_menu.on_touch(x, y) then 
			draw()
			return true
		end
	end
	if ui_hud.on_touch(x, y) then
		draw()
		return true 
	end
	return false
end
if ui.s and ui.i and ui.i <= #ui.s then
	-- We are continuing from where we left off.
else
	-- Need to run the next node.
	dofile(gs.node)
end
draw()

