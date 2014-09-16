--The "right" choice. Starts Damien's personal "rank".

add({ n = 'CECILIA', d = {"Oh, hey, what'cha do during the weekend?"} })

add({ n = 'DAMIEN', d = {"...Wouldn't you like to know?"} })

add({ n = 'CECILIA', d = {"Yea, but... I thought I'd make conversation..."} })

add({ n = 'DAMIEN', d = {"Well, I've been hanging around bars lately..."} })

add({ n = 'CECILIA', d = {"Bars? You're too young to drink..."} })

add({ n = 'DAMIEN', d = {"The one I visit often is... more of an independent coffee shop. Though, they do", "sell alcohol at night."} })

add({ n = 'CECILIA', d = {"Oh... Hm..."} })

add({ n = 'DAMIEN', d = {"Yea, they have also stage where small, up-and-coming bands can perform."} })

add({ n = 'CECILIA', d = {"Oh! Sounds interesting! What's it called?"} })

add({ n = 'DAMIEN', d = {"Not tellin' you... You wouldn't like a place like that, trust me."} })

add({ n = 'CECILIA', d = {"W-what do you mean by that?!"} })

add({ n = 'DAMIEN', d = {"Not your type of crowd, you dork."} })

add({ n = '', d = {"Damien stood and started to leave."} })

add({ n = 'CECILIA', d = {"Type of crowd? What kind of crowd is it...?"} })

add({ n = 'DAMIEN', d = {"..."} })

add({ n = '', d = {"...Without saying another word, he was gone."} })

add({ n = 'CECILIA', d = {"(A 'bar', huh? ...Jeez, now I'm curious!)"} })

add({ d = {"(...And I forgot to ask him about the summer rock band camp thing...)"} })

add({ 
	d = {"(I'll just have to ask him later...)"}, 
	node = 'nodes/week2/day8/afternoon.lua',
	f = function()
		gs.damien_scene = 1
	end
})