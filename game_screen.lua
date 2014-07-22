local game_log        = require('game_log')
local game_sound      = require('game_sound')
local game_menu       = require('game_menu')
local game_choices    = require('game_choices')

local name_font   = fonts.create("fonts/CaviarDreams.ttf", 70)
local dialog_font = fonts.create("fonts/Delicious-Roman.otf", 50)
local date_font   = fonts.create("fonts/CaviarDreams.ttf", 50)

local name_color = { r = 51, g = 153, b = 255, a = 255 }

local bg_texture
local sm_texture
local lg_texture

local main_texture
local next_texture
local bar_texture
local menu_button_texture
local hide_button_texture
local white_diamond_texture
local menu_button
local hide_button

local main_y = design_width - 110 * 1.618
local name_x = 750
local bar_y  

local function load_textures()
	main_texture          = textures.image('gui/UI-main.png')
	next_texture          = textures.image('gui/UI-button-next.png')
	hide_button_texture   = textures.image('gui/UI-x-button.png')
	menu_button_texture   = textures.image('gui/UI-menu-button.png')
	white_diamond_texture = textures.image('gui/UI-diamond-white.png')
	bar_texture = textures.image('gui/UI-border-bottom.png')
	if string.len(ui.bg) > 0 then 
		bg_texture = textures.image(ui.bg) 
	end
	if string.len(ui.lg) > 0 then 
		lg_texture = textures.image(ui.lg)
	end
	if string.len(ui.sm) > 0 then 
		sm_texture = textures.image(ui.sm)
	end

	main_y = design_height - main_texture.h * .95 - 110 * 1.618
end

local function draw_bg()
	if string.len(ui.bg) == 0 then return end
	bg_texture:draw()
end

local function draw_lg()
	if string.len(ui.lg) == 0 then return end
	if ui.lg == 'box' then
		blendmode_blend()
		set_draw_color(0, 0, 0, 55)
		fill_rect(1600, 140, 800, 1300)
		return
	end
	lg_texture:draw(1600, 140)
end

local function draw_sm()
	if string.len(ui.sm) == 0 then return end
	if ui.sm == 'box' then
		blendmode_blend()
		set_draw_color(0, 0, 0, 55)
		fill_rect(170, 740, 400, 600)
		return
	end
	sm_texture:draw(170, 740)
end

local function draw_main()
	main_texture:draw(0, main_y)
end

local function draw_next()
	local x = design_width - 1.39 * next_texture.w
	local y = main_y + main_texture.h - 1.3 * next_texture.h
	next_texture:draw(x, y)
end

local function draw_dialog()
	local texture
	local x = name_x
	local y = main_y + 160
	if #ui.d == 3 then y = y - 20 end
	for i, v in ipairs(ui.d) do
		texture = dialog_font:text(v, black)
		texture:draw(x, y)
		y = y + texture.h + 8
	end
end

local function draw_name()
	local texture = name_font:text(ui.n, name_color)
	local y = main_y + 45 
	texture:draw(name_x, y)
end

local function draw_choices()
	game_choices.draw()
end

local function draw_bar()
	bar_y = design_height - bar_texture.h
	bar_texture:draw(0, bar_y)
end

local function draw_date()
	local space = 26
	local date = 
		(gs.dow or '?') .. ' ' .. 
		(gs.time or '?') .. ', ' .. 
		(gs.month or '?') .. ' ' .. 
		(gs.day or '?')
	local date_texture = date_font:text(date, black)
	local x = 340 - (white_diamond_texture.w + space + date_texture.w) / 2
	local date_y = bar_y + date_texture.h / 2 - 4 -- adjust a little
	local diamond_y = bar_y + bar_texture.h / 2 - white_diamond_texture.h / 2
	white_diamond_texture:draw(x, diamond_y)
	x = x + white_diamond_texture.w + space
	date_texture:draw(x, date_y)
	x = x + date_texture.w + space
	white_diamond_texture:draw(x, diamond_y)
end

local function draw_menu_button()
	local x = design_width - menu_button_texture.w * 1.618
	local y = design_height - bar_texture.h / 2 - menu_button_texture.h / 2
	menu_button = buttons.create_from_texture(menu_button_texture, x, y)
	menu_button:draw()
end

local function draw_hide_button()
	local x = hide_button_texture.w
	local y = main_y + .6 * menu_button_texture.h
	hide_button = buttons.create_from_texture(hide_button_texture, x, y)
	hide_button:draw()
end

function draw()
	load_textures()

	set_draw_color(0, 0, 0, 255)
	render_clear()

	draw_bg()
	draw_lg()
	if ui.background_only then 
		render()
		return
	end

	draw_main()
	draw_sm()
	draw_next()
	if ui.d and #ui.d > 0 then draw_dialog() end
	if ui.n and string.len(ui.n) > 0 then draw_name() end

	if ui.c and #ui.c > 0 then draw_choices() end

	draw_bar()
	draw_date()
	draw_menu_button()
	draw_hide_button()

	if ui.overlay == 'menu' then
		game_menu.draw()
	elseif ui.overlay == 'log' then
		game_log.draw()
	elseif ui.overlay == 'sound' then
		game_sound.draw()
	end

	render()
end

function on_update()
end

function on_touch(x, y)
	if ui.background_only then
		ui.background_only = false
		draw()
		return true
	end
	if ui.overlay == 'menu' then
		if game_menu.on_touch(x, y) then 
			draw()
		elseif menu_button:contains(x, y) then
			ui.overlay = 'none'
			draw()
		end
		return true
	end
	if ui.overlay == 'log' then
		if game_log.on_touch(x, y) then
			draw()
		end
		return true
	end
	if ui.overlay == 'sound' then
		if game_sound.on_touch(x, y) then draw() end
		return true 
	end
	if hide_button:contains(x, y) then
		ui.background_only = true
		draw()
		return true
	end
	if menu_button:contains(x, y) then
		ui.overlay = 'menu'
		draw()
		return true
	end
	if ui.c and #ui.c > 0 then 
		if game_choices.on_touch(x, y) then
			next()
			draw()
			return true
		else
			return false
		end
	end
	next()
	draw()
	return true
end

if ui.s and ui.i and ui.i <= #ui.s then
	-- We are continuing from where we left off.
else
	-- Need to run the next node.
	gonode(gs.node)
	next()
end

draw()

