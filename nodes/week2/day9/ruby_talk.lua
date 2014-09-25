--Talk to Ruby.

add({ n = 'CECILIA', d = {"Hey, Ruby."} })

add({ n = 'RUBY', d = {"Oh, hello."} })

if gs.ruby_scene == 0
	add({ n = 'CECILIA', d = {"You're interested in art, right?"} })
	add({ n = 'RUBY', d = {"...Yes? Are you interested in it too?"} })
	add({ d = {"B-because if you are, you should join the art club. We hold meetings on Monday,", "Wednesday, and Friday."} })
	add({ d = {"In the art studio, room 114 in the Art Building. A-around noon."} })
	add({ n = 'CECILIA', d = {"Hm... What kinds of things do you do there?"} })
	add({ n = 'RUBY', d = {"W-well, no one really comes, so I just it in there and draw or paint, usually..."} })
	add({ n = 'CECILIA', d = {"Oh I see... Well, I'm not too sure about joining a club, but I would like to go", "and spend some time there."} })
	add({ n = 'RUBY', d = {"Oh, that would be great! My friend also does that sometimes, since she's", "in another club... I think."} })
	add({ n = 'CECILIA', d = {"Alright. Well, I'm gonna go get something to eat."} })
	add({ n = 'RUBY', d = {"I-I need to leave too, so... Goodbye."} })
	add({ n = 'CECILIA', d = {"Bye!"} })

elseif gs.ruby_scene == 1
	add({ n = 'RUBY', d = {"Will you be dropping by the Art Studio tomorrow?"} })
	add({ n = 'CECILIA', d = {"I'm not sure yet..."} })
	add({ n = 'RUBY', d = {"Oh..."} })
	add({ n = 'CECILIA', d = {"I guess it's kind of boring, huh... Being there by yourself."} })
	add({ n = 'RUBY', d = {"Yes, just a bit. Though the peace and quiet keeps me focused."} })
	add({ n = 'CECILIA', d = {"Heheh, pretty optismistic."} })
	add({ n = 'RUBY', d = {"Yes... So, uh... Whenever you have the time, please drop by."} })
	add({ n = 'CECILIA', d = {"I will. You can count on that."} })
	add({ n = 'RUBY', d = {"...Thank you."} })
	add({ n = 'CECILIA', d = {"Well, I'm about to go get some food, wanna come with?"} })
	add({ n = 'RUBY', d = {"I would love to, but... I was just about to leave for my next class."} })
	add({ n = 'CECILIA', d = {"Oh, okay. Well, see you again."} })
	add({ n = 'RUBY', d = {"Yes. Goodbye, Cecilia."} })

elseif gs.ruby_Scene == 2
	add({ n = 'CECILIA', d = {"Hey... just finished your food?"} })
	add({ n = 'RUBY', d = {"Yes. If I would've known you had a break right now, I would've waited. Sorry."} })
	add({ n = 'CECILIA', d = {"It's alright. When the beast inside starts to growls, it's hard to wait to feed it."} })
	add({ n = 'RUBY', d = {"Hahaha, beast? Ahahaha, oh... Why a beast?"} })
	add({ n = 'CECILIA', d = {"Well, you know... The growls and grumbles it makes it seem like it's a beast!"} })
	add({ n = 'RUBY', d = {"Ahahahahah! Oh, I get it! Hahah..."} })
	add({ d = {"Oh, by the way, I've been thinking a bit about my past and stuff."} })
	add({ n = 'CECILIA', d = {"Any memories turn up?"} })
	add({ n = 'RUBY', d = {"No, not yet. But I feel like I'm getting somewhere. I can't remember names or", "faces, but ever since you first mentioned it to me, I've been having dreams."} })
	add({ n = 'CECILIA', d = {"Dreams? Fill me in."} })
	add({ n = 'RUBY', d = {"Not right now. I have to go to class. I'm sorry."} })
	add({ n = 'CECILIA', d = {"Oh, it's alright. We can talk about it later!"} })
	add({ n = 'RUBY', d = {"Yes. Alright. See you later."} })
	add({ n = 'CECILIA', d = {"Peace out!"} })

end

add({ n = 'CECILIA', d = {"(Well, now that it's just me, I guess I should get something to eat."} })

add({ n = '', d = {"..."} })

add({ d = {"........"} })

add({ d = {"The meal today was alright, but you did think it was a waste of money buying", "something that expensive."} })

add({ n = 'CECILIA', d = {"(Well, it's time for class... I better get going.)"}, node = 'nodes/week2/day9/night9.lua', f = next_time })
