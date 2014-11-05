--Resturant, encounter Ruby! Wootz.

add({ n = 'CECILIA', d = {"How about we go get some lunch? It's a been a while since we've gone out to eat!"} })

add({ d = {"Especiallu since you're been so pre-occupied with improving your wife skills."} })

add({ n = 'ERIKA', d = {"Of course. It's always food with you."} })

add({ d = {"But to be honest... I am hungry and feeling a little lazy... So, why not?"} })

add({ n = 'CECILIA', d = {"Hooray! Food! Heheheh!"} })

add({ n = '', lg = '', bg = '', d = {"..."} })

add({ d = {"Lol, still missing the BG~"} })

add({ d = {"At the restaurant..."} })

add({ d = {"You and Erika have sat at a table and ordered. Now, you wait for your meals."} })

add({ d = {"However, as you wait, you see a familiar pair of red eyes and messy hair come in."} })

add({ n = 'CECILIA', d = {"H-huh...?"} })

add({ n = 'ERIKA', d = {"Hm? What?"} })

add({ n = '', d = {"Erika looks over her shoulder and sees the little mousey girl shyly wait to be seated."} })

add({ n = 'ERIKA', d = {"Hey... Is that the girl? The one you bumped into on the first day of school?"} })

add({ n = 'CECILIA', d = {"Uh huh... I guess she lives around here..."} })

add({ n = 'ERIKA', d = {"Why don't you go talk to her? Talking to someone outside of the normal meeting times", "and days might bring you too closer than ya think!"} })

add({ n = 'CECILIA', d = {"...I guess."} })

add({ n = 'ERIKA', d = {"I think it's true! When we talked together outside of school, I felt closer to you", "than those other people we hung out with."} })

add({ n = 'CECILIA', d = {"Ugh, fine... I'll go talk to her... I just hope it doesn't get awkward."} })

add({ n = 'ERIKA', d = {"Heheheh, okay! I'll be here."} })

add({ n = 'CECILIA', d = {"Alright, be right back."} })

if gs.ruby_scene == 1 or gs.ruby_scene == 2 then
	add({ 
		d = {"(Oh please don't make this awkward, Ruby...)"}, 
		node = 'nodes/week2/weekend/ruby1.lua',
		f = function()
			gs.ruby = gs.ruby + 5
		end
	})

elseif gs.ruby_scene == 3 then
	add({ 
		d = {"(I wonder what she's doing here...)"},
		node = 'nodes/week2/weekend/ruby3.lua',
		f = function()
			gs.ruby = gs.ruby + 10
		end
	})

else
	add({ 
		d = {"(I've never actually tried to talk to her, so this'll probably be really awkward!)"},
		node = 'nodes/week2/weekend/ruby0.lua',
	})
end
