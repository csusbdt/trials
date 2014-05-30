local buttons   = require('lua2.buttons')
local textures  = require('lua2.textures')
local fonts     = require('lua2.fonts')
local music     = require('lua2.music')
local sounds    = require('lua2.sounds')
local sf        = require('lua2.savefile')

-- Screen design size is 800 by 450.

-- a1 and a2 are buttons that display dialog.
local a_font  = fonts.create("fonts/DroidSansMono.ttf", 22)
local a1_x = 50
local a2_x = 50
local a1_y = 50
local a2_y = 80
local a1   -- created in goto_node
local a2   -- created in goto_node

-- b1 and b2 are buttons that display choices.
local b_font  = fonts.create("fonts/DroidSansMono.ttf", 22)
local b1_x = 50
local b2_x = 50
local b1_y = 250
local b2_y = 280
local b1   -- created in goto_node
local b2   -- created in goto_node

-- ex is the exit button.
local ex_x = 50
local ex_y = 400
local ex_r = 255
local ex_g = 255
local ex_b = 255
local ex_font = fonts.create("fonts/DroidSansMono.ttf", 22)
local ex_texture = ex_font:text("Exit", ex_r, ex_g, ex_b)
local ex = buttons.create_from_texture(ex_texture, ex_x, ex_y)

-- lg is the large portrait
local lg_x = 700
local lg_y = 50

-- sm is the small portrait
local sm_x = 100
local sm_y = 275

if not sf.current_node then
	sf.current_node = 'start'
end

function on_update()
	if bg then bg:draw() end -- background
	if lg then lg:draw() end -- large portrait
	if sm then sm:draw() end -- small portrait
	if a1 then a1:draw() end -- dialog
	if a2 then a2:draw() end
	if b1 then b1:draw() end -- choices
	if b2 then b2:draw() end
	if ex then ex:draw() end -- exit button
end

function on_touch(x, y) 
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
	local t = a_font:text(text, 0, 255, 0)
	return buttons.create_from_texture(t, x, y)
end

-- Utility function to create choice buttons.
function choice(text, x, y)
	if not text then return nil end
	local t = b_font:text(text, 0, 255, 255)
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
	local env = { sf = sf, music = music, sounds = sounds }
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

