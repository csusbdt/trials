-- dimensions: 2560 by 1440

local dialog = require('game/dialog')
local menu = require('game/menu')

dialog.lg = 'lg/Damien.png'
dialog.sm = 'sm/MC.png'

local function draw()
	set_draw_color(255, 255, 255, 255)
	render_clear()
	dialog.draw()
	menu.draw()
	render()
end

local function load_textures()
	local main_area_texture   = textures.image('gui/UI-main.png')
	local next_button_texture = textures.image('gui/UI-button-next.png')
	main_area   = buttons.create_from_texture(main_area_texture, 0, 780)
	next_button = buttons.create_from_texture(next_button_texture, 2395, 1110)
	dialog.load_textures()
	menu.load_textures()
end

function on_render_targets_reset()
	draw()
end

function on_render_device_reset()
	load_textures()
	draw()
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

