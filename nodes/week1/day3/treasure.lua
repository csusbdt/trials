--Description for her treasure...

local choice1
local choice2 
local choice3
local choice4
local finish

add({ 
	n = 'KAIRA',
	d = {"Which one do you wanna do first?"} })
	c = {
		{t = "The Marble.", f = function() choice1() end},
		{t = "The Ribbon.", f = function() choice2() end},
		{t = "The Piece of Paper.", f = function() choice3() end},
		{t = "The Mask.", f = function() choice4() end}
	}
})

choice1 = function()
	