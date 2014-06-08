local button_color = { r = 205, g = 205, b = 205 }

-- Screen design size is 800 by 450.

local function create_background()
	--return textures.image('bg/schoolFiller.jpg')
	return nil
end

local function create_title(text, x, y)
	local f = fonts.create("fonts/DroidSansMono.ttf", 32)
	local t = f:text(text, {r=255, g=100, b=100})
	return buttons.create_from_texture(t, x, y)
end

local function create_button(text, x, y)
	local f = fonts.create("fonts/DroidSansMono.ttf", 22)
	local t = f:text(text, button_color)
	return buttons.create_from_texture(t, x, y)
end

local bg              = create_background();
local title           = create_title ("Trials of the damned", 120,  50)
local continue_button = create_button("Continue"            ,  50, 200)
local restart_button  = create_button("Restart story"       ,  50, 260)
local exit_button     = create_button("Exit"                ,  50, 320)

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
		dofile('screens/story.lua')
	elseif restart_button:contains(x, y) then
		sf.clear()
		sf.current_node = 'start'
		dofile('screens/story.lua')
	elseif exit_button:contains(x, y) then
		quit()
	end
end

collectgarbage()

