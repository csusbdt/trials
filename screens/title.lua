_ENV = {
	_G = _G,
	require = require,
	dofile = dofile,
	collectgarbage = collectgarbage,
	quit = quit
}

textures = require('lua2.textures')
fonts    = require('lua2.fonts')
buttons  = require('lua2.buttons')
music    = require('lua2.music')
sounds   = require('lua2.sounds')
sf       = require('lua2.savefile')

button_color = { r = 205, g = 205, b = 205 }

-- Screen design size is 800 by 450.

function create_background()
	--return textures.image('bg/schoolFiller.jpg')
	return nil
end

function create_title(text, x, y)
	local f = fonts.create("fonts/DroidSansMono.ttf", 32)
	local t = f:text(text, {r=255, g=100, b=100})
	return buttons.create_from_texture(t, x, y)
end

function create_button(text, x, y)
	local f = fonts.create("fonts/DroidSansMono.ttf", 22)
	local t = f:text(text, button_color)
	return buttons.create_from_texture(t, x, y)
end

bg              = create_background();
title           = create_title ("Trials of the damned", 120,  50)
continue_button = create_button("Continue"            ,  50, 200)
restart_button  = create_button("Restart story"       ,  50, 260)
exit_button     = create_button("Exit"                ,  50, 320)

music.set('music/MushroomForest.wav')

function _G.on_update()
	if bg then bg   :draw() end
	title           :draw()
	continue_button :draw()
	restart_button  :draw()
	exit_button     :draw()
end

function _G.on_touch(x, y)
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

