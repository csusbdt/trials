fonts    = require('lua2.fonts')
textures = require('lua2.textures')
buttons  = require('lua2.buttons')
waves    = require('lua2.waves')
music    = require('lua2.music')
sounds   = require('lua2.sounds')
sf       = require('lua2.savefile')

black = { r =   0, g =   0, b =   0 }
white = { r = 255, g = 255, b = 255 }
dark  = { r =  40, g =  40, b =  40 }
light = { r = 205, g = 205, b = 205 }

gs = require('game_save')

ui = {}
--ui_log        = require('ui_log')
--ui_background = require('ui_background')
--ui_hud        = require('ui_hud')
--ui_menu       = require('ui_menu')
--ui_choices    = require('ui_choices')
--ui_sound      = require('ui_sound')

function on_render_targets_reset()
	if draw then draw() end
end

function on_device_reset()
	textures.discard_userdata()
	if draw then draw() end
end

function on_window_size_changed()
	if draw then draw() end
end

dofile('warning_screen.lua')

