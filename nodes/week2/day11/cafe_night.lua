--Meet Ruby

add({ n = 'CECILIA', d = {"(Hm... It's not too late for a little snack. I guess I'll go see what's new in", "the cafe.)"} })

add({ n = '', d = {"..."}, bg = '' })

add({ bg = bg.cafe, d = {"In the Cafe..."} })

add({ n = 'CECILIA', d = {"(Oh, it's Ruby.)"} })

add({ n = '', lg = lg.ruby_Worry, d = {"The small girl was looking through the pasrty section on the market in the cafe."} })

if gs.ruby_scene >= 1 then
	add({ d = {"Before you could enter the mart, she noticed you and gave you a small smile."} })
	add({ n = 'RUBY', d = {"Hello. Came to buy some treats as well?"} })
	add({ n = 'CECILIA', d = {"Yea... I've been craving some snacks lately."} })
	add({ d = {"All of this studying has made me very snacky."} })
	add({ n = 'RUBY', d = {"Oh? But it's only the second week."} })
	add({ n = 'CECILIA', d = {"You know what they say, the second week is normally the week when you're brain breaks."} })
	add({ n = 'RUBY', d = {"...To be honest, my classes have gotten really demanding recently."} })
	add({ d = {"And I thought this first quarter was going to be a little bit more easier. It's", "just going to get worst from here."} })
	add({ n = 'CECILIA', d = {"Yea... But luckily, the mart and the coffee shop are both open late, so... Maybe", "it won't be so bad."} })
	add({ d = {"We'll get used to the college lifestyle soon.... Probably."} })
	add({ n = 'RUBY', d  = {"Hopefully. Well, I need to get back to studying, so I'll see you later."} })
	add({ n = 'CECILIA', d = {"Alright, peace out!"} })
	add({ n = 'RUBY', d = {"Goodbye."} })

else
	add({ d = {"You walked next to her, but she didn't really notice you until you were right", "next to her."} })
	add({ n = 'RUBY', d = {"..."} })
	add({ n = '', d = {"Even though she looked right at you, she didn't say a word..."} })
	add({ n = 'CECILIA', d = {"Uh... Hello."} })
	add({ n = 'RUBY', d = {"H-hello..."} })
	add({ n = 'CECILIA', d = {"Making a late night run for some snacks too?"} })
	add({ n = 'RUBY', d = {"Yes..."} })
	add({ n = 'CECILIA', d = {"Mhm, that's how it goes. Using all of this brainpower uses energy!"} })
	add({ n = 'RUBY', d = {"Y-yeah... I-I haven't snacked this much in a long time."} })
	add({ n = 'CECILIA', d = {"Right?! No wonder the freshman fifteen is a real thing!"} })
	add({ n = 'RUBY', d = {"Ahahahah... My friend said that too. I try to watch what I eat, but these treats", "are just too tempting."} })
	add({ n = 'CECILIA', d = {"I don't blame ya! These are delicious! In fact, I think I'll get one of these", "pastries!"} })
	add({ n = 'RUBY', d = {"Mmmm... I think I'm going think about this some more. Hope you enjoy it."} })
	add({ n = 'CECILIA', d = {"Mmmkay, peace!"} })
end

add({ n = '', d = {"You say your goodbyes to the mousey girl and proceed to buy your snacks."} })

add({ d = {"..."}, bg = '' })

add({ d = {"............."} })

add({ bg = bg.cecilia_room_night, d = {"Back at your dorm, you stay up a little bit longer and then go to sleep."}, node = 'nodes/week2/day12/afternoon.lua', f = next_time })