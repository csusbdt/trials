fonts    = require('lua2.fonts')
textures = require('lua2.textures')
buttons  = require('lua2.buttons')
--waves    = require('lua2.waves')
music    = require('lua2.music')
sounds   = require('lua2.sounds')
sf       = require('lua2.savefile')

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

black = { r =   0, g =   0, b =   0 }
white = { r = 255, g = 255, b = 255 }
dark  = { r =  40, g =  40, b =  40 }
light = { r = 205, g = 205, b = 205 }
blue  = { r = 51, g = 153, b = 255, a = 255 }

overlay_r = 50
overlay_g = 50
overlay_b = 50
overlay_a = 225

menu_option_font_color = { r = 200, g = 200, b = 200, a = 255 }
menu_option_font_name  = 'fonts/CaviarDreams.ttf'
menu_option_font_size  = 54

log_font_color_1 = { r = 21, g = 127, b = 230, a = 255 }
log_font_color_2 = { r = 0, g = 0, b = 0, a = 255 }
log_font_name  = 'fonts/CaviarDreams.ttf'
log_font_size  = 39

gs  = require('game_save')
ui  = require('ui')
sm  = require('sm')
lg  = require('lg')
bg  = require('bg')
mu  = require('mu')
sn  = require('sn')
log = require('log')
qu  = require('queue')
add = qu.add

function draw_grey_overlay()
        blendmode_blend()
        set_draw_color(overlay_r, overlay_g, overlay_b, overlay_a)
        fill_rect(0, 0, design_width, design_height)
        blendmode_none()
end

dofile('util/time_functions.lua')
dofile('warning_screen.lua')

