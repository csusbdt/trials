--[[
local function next()
	print 'next'
end

return {
{ "June 12 morning", "schoolFiller", "CECLIA", 'MC', '', { "I'm Cecilia.", "The hero of this story." }, next },
{ "June 12 morning", "schoolFiller", "CECLIA", 'MC', 'Damien.png', { "I'm Damien.", "The villain." } },
}
--]]

menu.date = "June 12 morning"
dialog.lg    = 'lg/Damien.png'
dialog.sm    = 'sm/MC.png'
dialog.name  = 'CECILIA'
dialog.d     = { "I'm Cecilia.", "The hero of this story." }

function next()
	dialog.d = { "I'm Damien.", "The villain." }
	draw()
	next = next2
end

function next2()
	dialog.d = { "I am every where." }
	draw()
end

draw()

