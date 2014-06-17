fonts    = require('lua2.fonts')
textures = require('lua2.textures')
buttons  = require('lua2.buttons')
waves    = require('lua2.waves')
music    = require('lua2.music')
sounds   = require('lua2.sounds')
sf       = require('lua2.savefile')

black    = { r =   0, g =   0, b =   0 }
white    = { r = 255, g = 255, b = 255 }

function on_window_size_changed()
        if on_render_targets_reset then on_render_targets_reset() end
end

if not app_fullscreen then
	set_window_size(800, 450)
	set_window_position(100, 100)
end

dofile('menu/screen.lua')

