--Drawing~

add({ n = 'CECILIA', d = {"Wanna draw a bit?"} })

add({ n = 'RUBY', d = {"Yea, sure!"} })

add({ n = '', d = {"You spent some time drawing with Ruby."} })

add({ d = {"..."} })

if gs.ruby_scene == 4 then
	add({ n = 'RUBY', d = {"..."} })
	add({ n = '', d = {"Ruby can't seem to draw anything..."} })
	add({ n = 'CECILIA', d = {"(She must still be thinking of what happened the other day.)"} })
end

add({ n = 'RUBY', d = {"...It's not come out right. This must be Artist Block, hahahah..."} })

add({ n = 'CECILIA', d = {"Hmm... Well, why don't we talk for a bit?"} })

add({ n = 'RUBY', d = {"Oh, yea, I actually heard about this one art museum that now has..."} })

add({ n = '', d = {"You and Ruby talked about weird art musuems until it was time for your next class."}, node = 'nodes/week3/day17/night17.lua', f = next_time })