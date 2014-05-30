local textures = require('lua2.textures')
local fonts    = require('lua2.fonts')
local buttons  = require('lua2.buttons')
local music    = require('lua2.music')
local sounds   = require('lua2.sounds')
local sf       = require('lua2.savefile')

-- Screen design size is 800 by 450.

function create_background()
	--return textures.image('bg/schoolFiller.jpg')
	return nil
end

function create_title(text, x, y)
	local f = fonts.create("fonts/DroidSansMono.ttf", 32)
	local t = f:text(text, 255, 100, 100)
	return buttons.create_from_texture(t, x, y)
end

function create_button(text, x, y)
	local f = fonts.create("fonts/DroidSansMono.ttf", 22)
	local t = f:text(text, 255, 255, 255)
	return buttons.create_from_texture(t, x, y)
end

local bg              = create_background();
local title           = create_title ("Trials of the damned", 120,  50)
local continue_button = create_button("Continue"            , 50, 200)
local restart_button  = create_button("Restart story"       , 50, 260)
local exit_button     = create_button("Exit"                , 50, 320)

music.set('music/MushroomForest.wav')

function on_update()
	if bg then bg   :draw() end
	title           :draw()
	continue_button :draw()
	restart_button  :draw()
	exit_button     :draw()
end

function on_touch(x, y)
	if continue_button:contains(x, y) then
		sounds.play('waves/door.wav')
		dofile('screens/story.lua')
	elseif restart_button:contains(x, y) then
		sounds.play('waves/door.wav')
		sf.clear()
		sf.current_node = 'start'
		dofile('screens/story.lua')
	elseif exit_button:contains(x, y) then
		quit()
	end
end

collectgarbage()

