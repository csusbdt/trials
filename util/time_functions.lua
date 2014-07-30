function next_month()
	if     gs.month == 'Jan' then gs.month = 'Feb'
	elseif gs.month == 'Feb' then gs.month = 'Mar'
	elseif gs.month == 'Mar' then gs.month = 'Apr'
	elseif gs.month == 'Apr' then gs.month = 'May'
	elseif gs.month == 'May' then gs.month = 'Jun'
	elseif gs.month == 'Jun' then gs.month = 'Jul'
	elseif gs.month == 'Jul' then gs.month = 'Aug'
	elseif gs.month == 'Aug' then gs.month = 'Sep'
	elseif gs.month == 'Sep' then gs.month = 'Oct'
	elseif gs.month == 'Oct' then gs.month = 'Nov'
	elseif gs.month == 'Nov' then gs.month = 'Dec'
	elseif gs.month == 'Dec' then gs.month = 'Jan'
	end
end

function next_day()
	gs.day = gs.day + 1
	if gs.day == 31 then
		gs.day = 1
		next_month()
	end
	if     gs.dow == 'Mon' then gs.dow = 'Tue'
	elseif gs.dow == 'Tue' then gs.dow = 'Wed'
	elseif gs.dow == 'Wed' then gs.dow = 'Thu'
	elseif gs.dow == 'Thu' then gs.dow = 'Fri'
	elseif gs.dow == 'Fri' then gs.dow = 'Sat'
	elseif gs.dow == 'Sat' then gs.dow = 'Sun'
	elseif gs.dow == 'Sun' then gs.dow = 'Mon'
	end
end

function next_time()
print(gs.time)
	if     gs.time == 'Morning'   then gs.time = 'Afternoon'
	elseif gs.time == 'Afternoon' then gs.time = 'Night'
	elseif gs.time == 'Night'     then 
		gs.time = 'Morning'
		next_day()
	else
		msgbox("Unknown time: " .. gs.time)
		quit()
	end
end

function next_morning()
	repeat
		next_time()
	until gs.time == 'Morning'
end

function next_afternoon()
	repeat
		next_time()
	until gs.time == 'Afternoon'
end

function next_night()
	repeat
		next_time()
	until gs.time == 'Night'
end

