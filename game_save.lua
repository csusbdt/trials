local gs = {}

local mt = {}
mt.__index = mt

setmetatable(gs, mt)

local function file_exists(filename)
	local file = io.open(filename, 'r')
	if not file then return false end
	io.close(file)
	return true
end

local function clear()
	for k in pairs(gs) do
		gs[k] = nil
	end
end

function mt.reset()
	clear()
	gs.node = 'nodes/start.lua'
end

function mt.load(n)
	clear()
	local filename = save_dir .. path_separator .. 'save_' .. n, 'r'
	if not file_exists(filename) then 
		gs.node = 'nodes/start.lua'
		return 
	end
	local k = nil
	for line in io.lines(filename) do
		if k then
			gs[k] = line
			k = nil
		else   
			k = line
		end
	end
	ui.time  = gs.time
	ui.dow   = gs.dow
	ui.day   = gs.day
	ui.month = gs.month
	ui.bg    = gs.bg
	ui.lg    = gs.lg
	ui.sm    = gs.sm
	ui.m     = gs.m
end

function mt.save(n)
        local filename = save_dir .. path_separator .. 'save_' .. n, 'r'
        local file, err = io.open(filename, 'w')
        if err then
                msgbox('Error in game_save.save:\n' .. err)
                quit()
        end
        for k, v in pairs(gs) do
                if string.find(k, '\n') or string.find(v, '\n') then
                        msgbox('Can not store newline characters in game save files.')
                        quit()
		end
		file:write(k .. '\n')
		file:write(v .. '\n')
	end
	file:close()
	sf['save_bg_' .. n] = ui.bg
	local date =
		(gs.dow   or '?') .. ' '  ..
		(gs.time  or '?') .. ', ' ..
		(gs.month or '?') .. ' '  ..
		(gs.day   or '?')
	sf['save_date_' .. n] = date
end

return gs

