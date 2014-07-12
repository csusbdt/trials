local gs = {}

local mt = {}
mt.__index = mt

setmetatable(gs, mt)

function mt.load(n)
	for k in pairs(gs) do
		gs[k] = nil
	end
	local data_string = read_file('save_' .. n) 
	if not data_string then
		gs.node = 'nodes/start.lua'
		return
	end
	for k, v in string.gmatch(data_string, "([%-_%w]+)=([%/%-_%w%.]+)") do
		gs[k] = v
	end
end

function mt.save(n)
	local data_string 
	for k, v in pairs(gs) do
		data_string = data_string and data_string .. ','
		data_string = data_string or ''
		data_string = data_string .. k .. '=' .. v
	end
	if app_print_savefile then _G.print('game save = ' .. (data_string or '')) end
	write_file('save_' .. n, data_string)
	sf['save_bg_' .. n] = ui.bg
end

return gs

