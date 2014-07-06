fonts    = require('lua2.fonts')
textures = require('lua2.textures')
buttons  = require('lua2.buttons')
waves    = require('lua2.waves')
music    = require('lua2.music')
sounds   = require('lua2.sounds')
sf       = require('lua2.savefile')

dialog   = require('game.dialog')
menu     = require('game.menu')

black = { r =   0, g =   0, b =   0 }
white = { r = 255, g = 255, b = 255 }
dark  = { r =  40, g =  40, b =  40 }
light = { r = 205, g = 205, b = 205 }

function on_render_targets_reset()
	if draw then draw() end
end

function on_device_reset()
	textures.discard_userdata()
	if load_textures then load_textures() end
	if draw then draw() end
end

function on_window_size_changed()
	on_render_targets_reset()
end

--[[
if not app_fullscreen then
	set_window_size(800, 600)
	set_window_position(100, 100)
end
--]]

dofile('menu/screen.lua')
--dofile('game/screen.lua')

