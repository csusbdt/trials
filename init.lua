fonts    = require('lua2.fonts')
textures = require('lua2.textures')
buttons  = require('lua2.buttons')
waves    = require('lua2.waves')
music    = require('lua2.music')
sounds   = require('lua2.sounds')
sf       = require('lua2.savefile')

black    = { r =   0, g =   0, b =   0 }
white    = { r = 255, g = 255, b = 255 }

--set_hint_render_scale_quality_linear()

function on_window_size_changed()
        if on_render_targets_reset then on_render_targets_reset() end
end

if not app_fullscreen then
	--set_window_size(2560, 1440)  -- /2    too big
	set_window_size(1280, 720)   -- /2    excellent, but too big
	--set_window_size(800, 450)    -- /3.2  poor
	--set_window_size(640, 360)    -- /4    poor
	--set_window_size(853, 480)    -- /3    poor
	set_window_position(100, 100)
end

dofile('menu/screen.lua')

