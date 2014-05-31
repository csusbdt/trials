_ENV = {
	_G = _G,
	require = require,
	dofile = dofile,
	collectgarbage = collectgarbage,
	pcall = pcall,
	load = load,
	load_chunk = load_chunk,
	quit = quit
}

buttons   = require('lua2.buttons')
textures  = require('lua2.textures')
fonts     = require('lua2.fonts')
music     = require('lua2.music')
sounds    = require('lua2.sounds')
sf        = require('lua2.savefile')

black = { r =   0, g =   0, b =   0 }
white = { r = 255, g = 255, b = 255 }
dark  = { r =  30, g =  30, b =  30 }
light = { r = 120, g = 220, b = 220 }

-- Screen design size is 800 by 450.

-- a1 and a2 are buttons that display dialog.
a_font  = fonts.create("fonts/DroidSansMono.ttf", 22)
default_a_color = light
-- a_color  -- created in goto_node
a1_x = 50
a2_x = 50
a1_y = 50
a2_y = 80
--a1   -- created in goto_node
--a2   -- created in goto_node

-- b1 and b2 are buttons that display choices.
b_font  = fonts.create("fonts/DroidSansMono.ttf", 22)
default_b_color = light
-- b_color  -- created in goto_node
b1_x = 50
b2_x = 50
b1_y = 250
b2_y = 280
--b1   -- created in goto_node
--b2   -- created in goto_node

-- ex is the exit button.
ex_x = 50
ex_y = 400
ex_color = light
ex_font = fonts.create("fonts/DroidSansMono.ttf", 22)
ex_texture = ex_font:text("Exit", ex_color)
ex = buttons.create_from_texture(ex_texture, ex_x, ex_y)

-- lg is the large portrait
lg_x = 700
lg_y = 50
lg_w = 160
lg_h = 240

-- sm is the small portrait
sm_x = 100
sm_y = 275
sm_w = 100
sm_h = 160

if not sf.current_node then
	sf.current_node = 'start'
end

function _G.on_update()
	if bg then bg:draw() end -- background
	if lg then lg:draw(lg_x, lg_y, lg_w, lg_h) end -- large portrait
	if sm then sm:draw(sm_x, sm_y, sm_w, sm_h) end -- small portrait
	if a1 then a1:draw() end -- dialog
	if a2 then a2:draw() end
	if b1 then b1:draw() end -- choices
	if b2 then b2:draw() end
	if ex then ex:draw() end -- exit button
end

function _G.on_touch(x, y) 
	if ex and ex:contains(x, y) then 
		dofile('screens/title.lua')
	elseif b1 and b1:contains(x, y) then 
		if f1 then f1() end
		goto_node(c1)
	elseif b2 and b2:contains(x, y) then 
		if f2 then f2() end
		goto_node(c2) 
	end
end

function end_story()
	sf.clear()
	sf.current_node = 'start'
	dofile('screens/title.lua')
end

-- Utility function to create dialog buttons.
function dialog(text, x, y)
	if not text then return nil end
	local t = a_font:text(text, a_color)
	return buttons.create_from_texture(t, x, y)
end

-- Utility function to create choice buttons.
function choice(text, x, y)
	if not text then return nil end
	local t = b_font:text(text, b_color)
	return buttons.create_from_texture(t, x, y)
end

function goto_node(node)
	if not node then 
		end_story() 
		return
	end
	local chunk = load_chunk('nodes/' .. node .. '.lua')
	if not chunk then
		msgbox(node .. ' not found.') 
		return 
	end
	local env = { 
		sf = sf, 
		music = music, 
		sounds = sounds, 
		black = black, 
		white = white, 
		dark = dark, 
		light = light }
	local n, msg = load(chunk, nil, 't', env)
	if not n then 
		msgbox(msg)
		return 
	end
	local status, msg = pcall(n)
	if not status then 
		msgbox(msg)
		return 
	end

	bg = env.bg and textures.image(env.bg)
	lg = env.lg and textures.image(env.lg)
	sm = env.sm and textures.image(env.sm)

	a_color = env.a_color or env.color or default_a_color
	b_color = env.b_color or env.color or default_b_color

	a1 = dialog(env.a1, a1_x, a1_y)
	a2 = dialog(env.a2, a2_x, a2_y)

	b1 = choice(env.b1, b1_x, b1_y)
	b2 = choice(env.b2, b2_x, b2_y)

	c1 = b1 and env.c1 
	c2 = b2 and env.c2 

	f1 = c1 and env.f1
	f2 = c2 and env.f2

	collectgarbage()  

	sf.current_node = node
end

goto_node(sf.current_node)

collectgarbage()  

