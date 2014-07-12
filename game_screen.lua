local ui_hud        = require('ui_hud')
local ui_log        = require('ui_log')
local ui_sound      = require('ui_sound')
local game_menu       = require('game_menu')
local ui_choices    = require('ui_choices')
local ui_background = require('ui_background')

function draw()
	set_draw_color(0, 0, 0, 255)
	render_clear()
	ui_background.draw()
	if ui_hud.show then 
		ui_hud.draw() 
		if ui.c then ui_choices.draw() end
		if     ui_log.show   then ui_log.draw()
		elseif game_menu.show  then game_menu.draw()
		elseif ui_sound.show then ui_sound.draw()
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
	if ui_log.show then
		if ui_log.on_touch(x, y) then draw() end
		return true 
	end
	if ui_sound.show then
		if ui_sound.on_touch(x, y) then draw() end
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

local function next_function()
	if ui.i > #ui.s then msgbox("Next goes nowhere."); return end
	local d = ui.s[ui.i]
	ui.date = d.date or ui.date
	ui.bg = d.bg or ui.bg
	ui.lg = d.lg or ui.lg
	ui.sm = d.sm or ui.sm
	ui.n = d.n or ui.n
	ui.d = d.d
	if ui.d then ui_log.update() end
	next = d.next or next
	ui.c = d.c
	ui.m = d.m or ui.m
	music.set(ui.m)
	ui.i = ui.i + 1
end

function sequence(seq)
	ui.i = 1
	ui.s = seq
	next = next_function
end

function next_node_function(node)
	return function()
		gs.node = node
		ui.c = nil
		dofile(node)
		music.set(ui.m)
	end
end

if ui.s and ui.i and ui.i <= #ui.s then
	-- We are continuing from where we left off.
else
	-- Need to run the next node.
	dofile(gs.node)
end
draw()

