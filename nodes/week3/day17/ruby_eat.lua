--Eating with Ruby

add({ n = 'CECILIA', d = {"How about we just eat for a bit. You still have your food, right?"} })

add({ n = 'RUBY', d = {"Oh? You don't mind? Yea, let's eat!"} })

add({ n = '', d = {"..."} })

if gs.ruby_scene == 4 then
	add({ n = 'RUBY', d = {"..."} })
	add({ n = '', d = {"During your snacking, Ruby barely ate anything.She seems to not have much of an", "appetite."} })
	add({ n = 'CECILIA', d = {"Hey, Ruby... Are you alright?"} })
	add({ n = 'RUBY', d = {"H-huh? Oh, yea... I just have a bit of a stomach ache."} })
	add({ d = {"The burrito is... Not the best I've had."} })
	add({ n = 'CECILIA', d = {"Oh...?"} })
	add({ d = {"(She's probably still hung up on what happened the other day...)"} })
	add({

add({ n = 'RUBY', d = {"...The burrito wasn't that great... Not eating there again."} })

add({ n = 'CECILIA', d = {"Hahaha, I don't blame you. But it is filling."} })

add({ n = 'RUBY', d = {"...It almost tasted like jail food."} })

add({ n = '', d = {"You and Ruby spent some time talking about food and other topics related to that", "until it was time for your next class."}, node = 'nodes/week3/day17/night17.lua', f = next_time })
