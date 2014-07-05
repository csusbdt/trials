local dialog = require('game/dialog')
local menu   = require('game/menu')

dialog.lg   = 'lg/Damien.png'
dialog.sm   = 'sm/MC.png'
dialog.name = 'CECILIA'
dialog.d    = { "I'm saying something cool!", "Is this OK?" }

function load_textures()
	dialog.load_textures()
	menu.load_textures()
end

function draw()
	set_draw_color(0, 0, 0, 255)
	render_clear()
	dialog.draw()
	menu.draw()
	render()
end

function on_update()
end

function on_touch(x, y)
	if menu.on_touch(x, y) then
		return
	elseif dialog.on_touch(x, y) then
		return
	end
end

load_textures()
draw()

