--Woot nighttime

add({ n = '', bg = bg.lecture_hall, d = {"Classes were boring, but you survived another day."} })

add({ bg = bg.cecilia_room_night, d = {"Back in your room..."} })

add({ n = 'KAIRA', lg = lg.ghost, d = {"Welcome back! Any progress?"} })

add({ n = 'CECILIA', d ={"Actually..."} })

if gs.ruby_scene == 1 then
	add({ d = {"I think I found Marble girl..."} })
	add({ n = 'KAIRA', d = {"Oh really!?"} })
	add({ n = 'CECILIA', d = {"Actually, I think I found another girl too... Tell me about the treasure the belonged", "to the other girl."} })
	add({ n = 'KAIRA', d = {"Oh, you want to do that one tonight? Okay!"} })

elseif gs.ruby_scene == 0 then
	add({ d = {"No, no progress..."} })
	add({ n = 'KAIRA', d = {"Waah, what a let down!"} })
	add({ n = 'CECILIA', d = {"Yea, sorry... I'm working on it, I swear I'll get this done!"} })
	add({ n = 'KAIRA', d = {"Mm... Well, we should continue the treasures. Only one today too?"} })
	add({ n = 'CECILA', d = {"Yea, sure..."} })

end

add({ d = {"The Ribbon... If I recall correctly, one of the girls had it... Yea,", "it was the tomboyish one... I think?"} })

add({ n = 'CECILIA', d = {"Why do you sound so unsure...?"} })

add({ n = 'KAIRA', d = {"'Cus it isn't something she'd have... Acually, now that I think", "about it... I think she gave this to me when it was given to her."} })

add({ d = {"Yea... That sounds about right... But why me? The other girl", "was really girly and hung out with her more than I did, so why...?"} })

add({ n = 'CECILIA', d = {"Hm... Does sound weird... Can't remember anything else?"} })

add({ n = 'KAIRA', d = {"Nuh uh... But I'll let you know if I think of anything else..."} })

add({ n = 'CECILIA', d = {"Alright, well... I think I'm going to go see Erika tonight. I haven't seen her in a while..."} })

add({ n = 'KAIRA', d = {"How do you not see your own roommate in a while...?"} })

add({ n = 'CECILIA', d = {"Because... I've been talking to you at night for the past 3 nights..."} })

add({ n = 'KAIRA', d = {"So this is my fault!?"} })

add({ n = 'CECILIA', d = {"Just a little."}, node = 'nodes/week1/day5/night5_part2.lua' })

)