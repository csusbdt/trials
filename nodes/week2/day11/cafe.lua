--A scene with Ruby.

add({ n = 'CECILIA', d = {"(It's food time! To the Cafe!)"} })

add({ n = '', bg = '', d = {"..."} })

add({ bg = bg.cafe, d = {"At the cafe..."} })

add({ n = 'CECILIA', d = {"(What should I eat today? Heheh!)"} })

add({ n = '', d = {"While you were deciding which food to eat, you suddenly feel pressure against your", "right shoulder."} })

add({ n = 'CECILIA', d = {"Wh-what?!"} })

add({ n = 'FAMILIAR VOICE', d = {"I-I... S-sorry!!"} })

add({ n = 'CECILIA', d = {"R-ruby?!"} })

add({ n = 'RUBY', lg = lg.ruby_worry, d = {"I-I'm so sorry... I was walking from the market and..."} })

add({ n = '', d = {"You looked down and saw a packaged sandwhich and a container filled with mixed fruit", "laying on floor near your feet."} })

add({ n = 'RUBY', d = {"I-I... I..."} })

add({ n = 'CECILIA', d = {"H-hey calm down... Let's grab your stuff and you can explain everything."} })

add({ n = '', d = {"You sat down with Ruby..."} })

add({ n = 'CECILIA', d = {"Okay, now that you've calmed down... What happened?"} })

add({ n = 'RUBY', d = {"O-okay... I was walking and I tripped and I fell on you..."} })

add({ d = {"Again, I'm sorry!"} })

add({ n = 'CECILIA', d = {"No, dude... It's alright."} })

add({ n = 'RUBY', d = {"..."} })

add({ n = '', d = {"She looks as if she's going to cry."} })

add({ n = 'RUBY', d = {"We keep bumping into each other..."} })

add({ n = 'CECILIA', d = {"Heheheh... Yea, but it's fine. Nothing broke this time..."} })

add({ n = 'RUBY', d = {"Y-yea..."} })

if gs.ruby_scene >= 1 then
	add({ d = {"H-hey, but... I'm remaking it so... I think it'll be fine."} })
	add({ n = 'CECILIA', d = {"Yea! Hey, do you remember anything?"} })
	add({ n = 'RUBY', d = {"Mm... Kind of... I'm starting to slowly get it."} })
	add({ n = 'CECILIA', d = {"That's good!"} })
end

add({ n = 'CECILIA', d = {"Mhm! Alright..."} })

add({ n = 'RUBY', d = {"H-hey... since we're here... Wanna eat with me?"} })

add({ n = 'CECILIA', d = {"Is it alright?"} })

add({ n = 'RUBY', d = {"Mhm! I'll wait for you to get your food, okay?"} })

add({ n = 'CECILIA', d = {"Alright, cool!"} })

add({ n = '', d = {"..."} })

add({ d = {".........."} })

add({ d = {"After eating with Ruby, she took off first and you left the cafe soon after."} })

add({ n = 'CECILIA', d = {"(Man, that was great! Eating food with others feels amazing!"} })

add({ n = '', d = {"Class is starting soon... You should get going."}, node = 'nodes/week2/day11/night11.lua' })