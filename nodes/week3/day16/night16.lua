--If you are at rank 3, scene with Will where you tutor him at the library.
--Besides that, a little scene with Kaira.

add({ n = '', d = {"Class was okay, like always..."}, bg = '', lg = ''} })

add({ d = {"Back at your dorm..."}, bg = bg.cecilia_room_night })

if gs.will_scene == 3 then
	add({ n = 'CECILIA', d = {"(Oh, I should get going to the library...)"}, node = 'nodes/week3/day16/library.lua'} })

end

add({ n = 'KAIRA', lg = lg.ghost, d = {"Oh hey, welcome back!"} })

add({ n = 'CECILIA', d = {"Hey. What'cha been up to?"} })

add({ n = 'KAIRA', d = {"Oh, you know... The usual."} })

add({ n = 'CECILIA', d = {"The usual being...?"} })

add({ n = '', d = {"You notice your makeup was out instead of in the box you normall keep it in."} })

add({ d = {"...You also notice make smears on Kaira's face."} })

add({ n = 'CECILIA', d = {"...Were you messing around in my makeup?"} })

add({ n = 'KAIRA', d = {"U-uh..."} })

add({ n = '', d = {"Kaira starts to shift her eyes around the room."} })

add({ n = 'CECILIA', d = {"(She's so easy to read. I almost can't get mad at her when she's this cute...)"} })

add({ d = {"Listen, I'm not angry... Especially since you didn't use too much of it."} })

add({ n = 'KAIRA', d = {"..."} })

add({ n = 'CECILIA', d = {"So, what happened? Were you just curious or something?"} })

add({ n = 'KAIRA', d = {"Yea... It kept goin' through me, so I 'ventually gave up."} })

add({ n = 'CECILIA', d = {"...Curious about makeup? Well, I guess that's normal. A lot of girls wanted to wear", "makeup around that age when I was a kid..."} })

add({ n = 'KAIRA', d = {"So... You really aren't angry, Cecilia?"} })

add({ n = 'CECILIA', d = {"Yea, I don't use it that often and it's not like you used a lot of it, so..."} })

add({ d = {"But please, if you want to try it out, maybe Erika or Cecilia can help you with it,", "okay?"} })

add({ n = 'KAIRA', d = {"Mmmm, I think I won't try that out anymore..."} })

add({ d = {"Oh, but why don't you wear any makeup? You're an adult, aren't ya?"} })

add({ n = 'CECILIA', d = {"Yea, but not all adult women like makeup. I mean, you didn't care for it, so why", "should I?"} })

add({ n = 'KAIRA', d = {"Ohhh, that makes sense! Well... The next time you do wear makeup, c-can I watch?"} })

add({ n = 'CECILIA', d = {"Heheh, sure. I'll make sure to 'invite' you, okay?"} })

add({ n = 'KAIRA', d = {"Thank you!"} })

add({ n = '', d = {"You and Kaira stayed up for a bit talking about makeup and fashion..."} })

add({ d = {"She really does seem like she's just from about ten years ago when she talks about", "fashion statements."} })

add({ d = {"..."}, lg = '', bg = '', node = 'nodes/week3/day17/physics.lua', f = next_time })