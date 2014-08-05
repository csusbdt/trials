function next_month()
	if     ui.month == 'Jan' then ui.month = 'Feb'
	elseif ui.month == 'Feb' then ui.month = 'Mar'
	elseif ui.month == 'Mar' then ui.month = 'Apr'
	elseif ui.month == 'Apr' then ui.month = 'May'
	elseif ui.month == 'May' then ui.month = 'Jun'
	elseif ui.month == 'Jun' then ui.month = 'Jul'
	elseif ui.month == 'Jul' then ui.month = 'Aug'
	elseif ui.month == 'Aug' then ui.month = 'Sep'
	elseif ui.month == 'Sep' then ui.month = 'Oct'
	elseif ui.month == 'Oct' then ui.month = 'Nov'
	elseif ui.month == 'Nov' then ui.month = 'Dec'
	elseif ui.month == 'Dec' then ui.month = 'Jan'
	end
end

function next_day()
	ui.day = ui.day + 1
	if ui.day == 31 then
		ui.day = 1
		next_month()
	end
	if     ui.dow == 'Mon' then ui.dow = 'Tue'
	elseif ui.dow == 'Tue' then ui.dow = 'Wed'
	elseif ui.dow == 'Wed' then ui.dow = 'Thu'
	elseif ui.dow == 'Thu' then ui.dow = 'Fri'
	elseif ui.dow == 'Fri' then ui.dow = 'Sat'
	elseif ui.dow == 'Sat' then ui.dow = 'Sun'
	elseif ui.dow == 'Sun' then ui.dow = 'Mon'
	end
end

function is_morning()
	return ui.time == 'Morning'
end

function is_afternoon()
	return ui.time == 'Afternoon'
end

function is_night()
	return ui.time == 'Night'
end

function next_time()
	if     is_morning()   then ui.time = 'Afternoon'
	elseif is_afternoon() then ui.time = 'Night'
	elseif is_night()     then 
		ui.time = 'Morning'
		next_day()
	elseif not ui.time then
		msgbox("Time set to nil.")
		quit()
	else
		msgbox("Unknown time: " .. ui.time)
		quit()
	end
end

function next_morning()
	repeat
		next_time()
	until ui.time == 'Morning'
end

function next_afternoon()
	repeat
		next_time()
	until ui.time == 'Afternoon'
end

function next_night()
	repeat
		next_time()
	until ui.time == 'Night'
end

