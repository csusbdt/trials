--You can talk to Kaira, she'll give advice about how to deal with Ruby.

add({ n = 'CECILIA', d = {"Hey, Kaira..."} })

add({ n = 'KAIRA', d = {"Yes? Any progress?"} })

if gs.ruby_scene == 2 then 
	add({ n = 'CECILIA', d = {"Actually yes. The girl who I think is the marble girl apparently suffers from anmesia."} })
	add({ n = 'KAIRA', d = {"An... meja? Ohhh, that thing that I have."} })
	add({ d = {"So, she can't remember me either?"} })
	add({ n = 'CECILIA', d = {"Apparently not."} })
	add({ n = 'KAIRA', d = {"...That's weird, she seemed like she was least likely to do that..."} })
	add({ n = 'CECILIA', d = {"Oh, have you remembered anything? It might help."} })

else
	add({ n = 'CECILIA', d = {"No, I wanted to ask something else."} })
	add({ d = {"I want to get closer to the girl-- the marble girl. Remember anything?"} })
end

add({ n = 'KAIRA', d = {"The marble girl... Hm..."} })

add({ n = '', d = {"Kaira pulled out the marble and stared at it."} })

add({ n = 'KAIRA', d = {"She was shy... Didn't like to play too roughly... Uhhh..."} })

add({ n = 'CECILIA', d = {"Anything new? Like for example, how I can talk to her better?"} })

add({ n = 'KAIRA', d = {"Oh! Don't be too aggressive. She tends to cry a lot if she gets yelled at..."} })

add({ n = 'CECILIA', d = {"..."} })

add({ n = 'KAIRA', d = {"She used to like to draw a lot... Actually yea, I remember she got a sketchpad as a", "gift too."} })

add({ d = {"Maybe, you can just talk to her about artsy stuff?"} })

add({ n = 'CECILIA', d = {"...You're a real help."} })

add({ n = 'KAIRA', d = {"Even though you said that, it doesn't feel geniune, y'know...?"} })

add({ n = 'CECILIA', d = {"Sarcasm. The word we will learn today is sarcasm."} })

add({ n = '', d = {"..."} })

add({ d = {"You and Kaira talked for a while before you headed off to bed."}, node = 'nodes/week2/day9/writing_class.lua', f = next_time })