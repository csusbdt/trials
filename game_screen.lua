local game_log        = require('game_log')
local game_sound      = require('game_sound')
local game_menu       = require('game_menu')
local game_choices    = require('game_choices')

local name_font   = fonts.create("fonts/CaviarDreams.ttf", 60)
local dialog_font = fonts.create("fonts/Delicious-Roman.otf", 50)
local date_font   = fonts.create("fonts/CaviarDreams.ttf", 44)

local bg_texture
local sm_texture
local lg_texture

local main_texture
local next_texture
local bar_texture
local white_diamond_texture
local menu_button
local hide_button

local main_y = 800
local bar_y  

local function draw_bg()
	if not ui.bg or string.len(ui.bg) == 0 then return end
	bg_texture = textures.image(ui.bg)
	bg_texture:draw()
end

local function draw_lg()
	if not ui.lg or string.len(ui.lg) == 0 then return end
	if not ui.lg == 'box' then
		blendmode_blend()
		set_draw_color(0, 0, 0, 55)
		fill_rect(1600, 140, 800, 1300)
	end
	lg_texture = textures.image(ui.lg)
	lg_texture:draw(1600, 140)
end

local function draw_sm()
	if not ui.sm or string.len(ui.sm) == 0 then return end
	if not ui.sm == 'box' then
		blendmode_blend()
		set_draw_color(0, 0, 0, 55)
		fill_rect(170, 740, 400, 600)
	end
	sm_texture = textures.image(ui.sm)
	sm_texture:draw(170, 740)
end

local function draw_main()
	main_texture = textures.image('gui/UI-main.png')
	main_texture:draw(0, main_y)
end

local function draw_next()
	next_texture = textures.image('gui/UI-button-next.png')
	next_texture:draw(design_width - 1.5 * next_texture.w, main_y + 1.3 * next_texture.h)
end

local function draw_dialog()
	local texture
	local x = 750
	local y = main_y + 220
	for i, v in ipairs(ui.d) do
		texture = dialog_font:text(v, black)
		texture:draw(x, y)
		y = y + texture.h + 8
	end
end

local function draw_name()
	local texture = name_font:text(ui.n, white)
	local x = 968 - texture.w / 2
	local y = 904 - texture.h / 2
	texture:draw(x, y)
end

local function draw_choices()
	game_choices.draw()
end

local function draw_bar()
	bar_texture = textures.image('gui/UI-border-bottom.png')
	bar_y = design_height - bar_texture.h
	bar_texture:draw(0, bar_y)
end

local function draw_date()
	white_diamond_texture = textures.image('gui/UI-diamond-white.png')
	local space = 26
	local date = 
		(gs.dow or '?') .. ' ' .. 
		(gs.time or '?') .. ', ' .. 
		(gs.month or '?') .. ' ' .. 
		(gs.day or '?')
	local date_texture = date_font:text(date, white)
	local x = 340 - (white_diamond_texture.w + space + date_texture.w) / 2
	local date_y = bar_y + date_texture.h / 2 + 0 -- adjust down a little
	local diamond_y = bar_y + bar_texture.h / 2 - white_diamond_texture.h / 2
	white_diamond_texture:draw(x, diamond_y)
	x = x + white_diamond_texture.w + space
	date_texture:draw(x, date_y)
	x = x + date_texture.w + space
	white_diamond_texture:draw(x, diamond_y)
end

local function draw_menu_button()
	local x = design_width - 300
	local texture = date_font:text("MENU", black)
	local y = design_height - bar_texture.h / 2 - texture.h / 2
	menu_button = buttons.create_from_texture(texture, x, y)
	menu_button:draw()
end

local function draw_hide_button()
	local texture = textures.image('gui/UI-diamond-black.png')
	local x = design_width - 100
	local y = design_height - bar_texture.h / 2 - texture.h / 2
	hide_button = buttons.create_from_texture(texture, x, y)
	hide_button:draw()
end

function draw()
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

