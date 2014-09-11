--finally i get to the night x.x

add({ 
	n = '',
	d = {"Back in your dorm room..."},
	bg = bg.cecilia_room_night,
	lg = '',
	f = next_time
})

add({ n = 'CECILIA', d = {"Any progress?"} })

add({ n = 'KAIRA', d = {"That's what I was gonna ask! Heheh!"} })

add({ n = 'CECILIA', d = {"Well..."} })

if gs.will_scene == 1 then
	add({ d = {"Actually, yes. I think my TA for my writing course is the mask guy. But", "I don't know for sure..."} })
	add({ n = 'KAIRA', d = {"Oh really?! Wow, you already have a lead~! So fast!"} })
	add({ n = 'CECILIA', d = {"Heheh, yea, but I have a feeling he's gonna make it hard for me..."} })
	add({ n = 'KAIRA', d = {"Oh yea. He's like that alright. Good luck!"} })
	add({ n = 'CECILIA', d = {"Ahahaha... thanks."} })

elseif gs.will_scene == 0 then
	add({ d = {"Not any progress... What about you? Remember anything?"} })
	add({ n = 'KAIRA', d = {"Uh... Not really."} })
	add({ n = 'CECILIA',d = {"You can't even remember what they look like?"} })
	add({ n = 'KAIRA', d = {"Nope, it's all blurry."} })
	add({ n = 'CECILIA', d = {"...I wonder if you ever even had friends to begin with..."} })
	add({ n = 'KAIRA', d = {"I did! I wouldn't ask you to look for 'em if I didn't!"} })
end

add({ n = 'CECILIA', d = {"At any rate, tell me some more about one of your 'treasures'."} })

add({ n = 'KAIRA', d = {"Righty, okay! The Marble... Right... Let's see... Oh!", "I remember one of the girls, the really quiet one, got marbles", "one day as a present."} })

add({ d = {"She shared them with us, giving each of us a different color.", "Mine's was this one, look at it when it's in bright lights!"} })

add({ n = 'CECILIA', d = {"Oh wow, a color changing marble..."} })

add({ n = 'KAIRA', d = {"Yup! Pretty cool, huh? And she gave this to me!"} })

add({ n = 'CECILIA', d = {"Okay... so do you remember anything else besides the fact that", "she was shy?"} })

add({ n = 'KAIRA', d = {"No, not really..."} })

add({ n = 'CECILIA', d = {"As I thought... Well, I think I do know someone who's shy, so I'll look around", "for her too."} })

add({ d = {"But for now, I gotta prepare for tomorrow's classes."} })

add({ n = 'KAIRA', d = {"Okay! I'll just be here, thinkin' a bit."} })

add({ n = '', bg = '', d = {"After studying a bit, you felt tired and went to sleep."}, node = 'nodes/week1/day5/morning.lua', f = next_time })