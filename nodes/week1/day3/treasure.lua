--Description for her treasure...

local choice1
local choice2 
local choice3
local choice4
local finish

add({ n = 'CECILIA', d = {"Well, let's just talk about one, okay? I got to get ready for class tomorrow."} })

add({ n = 'KAIRA', d = {"Okay! So, which one do you want to talk about?"} })

add({ n = 'CECILIA', d = {"Just.. pick one."} })

add({ n = 'KAIRA', d = {"Uh.. Okay! I'll talk about the Mask tonight, okay?"} })

add({ n = 'CECILIA', d = {"Okay, sounds good."} })

add({ d = {"The mask... Hmmm... I think this came from a play we had.", "Yea... We all had a play to put on in the small school we went to."} })

add({ d = {"The school and our class didn't really care, but my friends and me", "tried our best! The play got a lot of laughs, though the teachers weren't", "too happy..."} })

add({ n = 'CECILIA', d = {"That acutally sounds like a lot more fun than putting", "on a boring 3rd grade impression of Shakespeare..."} })

add({ n = 'KAIRA', d = {"Hm? Who's shakespeare?"} })

add({ n = 'CECILIA', d = {"It's... kind of late to be trying to learn something like that...", "Anyway, any clues on the person involved with this mask?"} })

add({ n = 'KAIRA', d = {"Hm... Oh!! This belonged to the bad guy! I remember people", "laughing a lot at his jokes and behavior, but..."} })

add({ d = {"A part of me was scared..."} })

add({ n = 'CECILIA', d = {"Scared of what?"} })

add({ n = 'KAIRA', d = {"Scared that... the cruel things he said were his true feelings...", "I think..."} })

add({ d = {"I-I... can't remember much... Sorry."} })

--[[ I was planning this below.. but it didn't work. So~ I'll do something else. Just saving the dialogue.

choice1 = function()
	add({ d = {"The Marble... Right... Let's see... Oh!", "I remember one of the girls, the really quiet one, got marbles", "one day as a present."} })
	add({ d = {"She shared them with us, giving each of us a different color.", "Mine's was this one, look at it when it's in bright lights!"} })
	add({ n = 'CECILIA', d = {"Oh wow, a color changing marble..."} })
	add({ n = 'KAIRA', d = {"Yup! Pretty cool, huh? And she gave this to me!"} })
	add({ n = 'CECILIA', d = {"Okay... so do you remember anything else besides the fact that", "she was shy?"} })
	add({ n = 'KAIRA', d = {"No, not really..."} })
	add({ n = 'CECILIA', d = {"As I thought..."} })
	add({ n = 'KAIRA', d = {"At any rate..."}, nodes = 'nodes/week1/day3/treasure.lua' })
end

choice2 = function()
	add({ d = {"The Ribbon... If I recall correctly, one of the girls had it... Yea,", "it was the tomboyish one... I think?"} })
	add({ n = 'CECILIA', d = {"Why do you sound so unsure...?"} })
	add({ n = 'KAIRA', d = {"'Cus it isn't something she'd have... Acually, now that I think", "about it... I think she gave this to me when it was given to her."} })
	add({ d = {"Yea... That sounds about right... But why me? The other girl", "was really girly and hung out with her more than I did, so why...?"} })
	add({ n = 'CECILIA', d = {"Hm... Does sound weird..."} })
	add({ n = 'KAIRA', d = {"At any rate..."}, nodes = 'nodes/week1/day3/treasure.lua' })
end

choice3 = function()
	add({ d = {"This isn't a piece of any paper... It's from a magazine!"} })
	add({ n = 'CECILIA', d = {"Can I see it? Hm...."} })
	add({ d = {"H-hey... This doesn't look that ancient! Maybe you are a more", "modern ghost... What does this mean for you, anyway?"} })
	add({ n = 'KAIRA', d = {"Hmmmm.... I think... Oh yea! It was the one time me and everyone", "made a band together! We did it because the boy who held on to this", "scrap reaaaaally wanted to go to this band camp!"} })
	add({ n = 'CECILIA', d = {"Pfft... A b-band camp?"} })
	add({ n = 'KAIRA', d = {"Hey, what's so funny? It was a really cool camp! You'd get to", "learn any instrument like the guitar or the drums!"} })
	add({ n = 'CECILIA', d = {"Oh, so it was that kind of band camp..."} })
	add({ n = 'KAIRA', d = {"Yup! It was really fun, pretending to be rock stars..."} })
	add({ n = 'KAIRA', d = {"At any rate..."}, nodes = 'nodes/week1/day3/treasure.lua' })
end

]]

add({ d = {"Alrighty. I hope that helps."} })
add({ n = 'CECILIA', d = {"Mmm... Just a little bit. I'll have to ask around."} })
add({ n = 'KAIRA', d = {"Alrighty! If I find out anything more, I'll let you know!"} })
add({ n = 'CECILIA', d = {"I expect you to."} })
add({ bg = '', lg = '', n = '', d = {"That night, when you were lying awake in your bed..."} })
add({ n = 'CECILIA', d = {"(Could that guy really be here at this college...? He could've left", "this town at any point in this lifetime...)"} })
add({ d = {"(I should get some sleep... Thinking about it late at night won't", "answer any questions...)"}, node = 'nodes/week1/day4/morning_encounter.lua', f = next_time })
