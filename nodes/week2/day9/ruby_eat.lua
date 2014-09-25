--You invite her to eat. It will still fail, because the highest dispostion at this point is +5, so~
--Deal with it.

add({ n = 'CECILIA', d = {"(Well, if she's not finished with her food yet, I could eat with her...)"} })

if gs.ruby_scene == 0
	add({ n = 'CECILIA', d = {"Hello."} })
	add({ n = 'RUBY', d = {"O-oh...! Hi..."} })
	add({ n = '', d = {"She seems a bit flustered."} })
	add({ n = 'CECILIA', d = {"I noticed you eating here and I wanted to know if you'd like to eat with me?"} })
	add({ n = 'RUBY', d = {"U-um... No, it's alright. I'm done anyways."} })
	add({ d = {"I-I'm sorry, I need to go to class now. Goodbye."} })
	add({ n = 'CECILIA', d = {"Bye..."} })
	add({ d = {"(She seemed a bit nervous... Maybe I should approach her at a different angle."} })
	
elseif gs.ruby_scene == 1
	add({ n = 'CECILIA', d = {"Oh, Ruby! Hi."} })
	add({ n = 'RUBY', d = {"Oh, it's you... Cecilia, right?"} })
	add({ n = 'CECILIA', d = {"Yes. What's up?"} })
	add({ n = 'RUBY', d = {"Just finishing up my food."} })
	add({ n = 'CECILIA', d = {"Oh, damn... I thought maybe I could come eat with you, but you're finished already."} })
	add({ n = 'RUBY', d = {"O-oh, really? Maybe next time we can eat together..."} })
	add({ n = 'CECILIA', d = {"Yea, that's true."} })
	add({ n = 'RUBY', d = {"Well, I-I have a class to attend to... I'm sorry, but I need to go."} })
	add({ n = 'CECILIA', d = {"It's alright. I'll catch you later."} })
	add({ n = 'RUBY', d = {"Goodbye."} })
	
elseif gs.ruby_Scene == 2
	add({ n = 'CECILIA', d = {"Yo, Ruby!"} })
	add({ n = 'RUBY', d = {"Oh, hello. Getting lunch?"} })
	add({ n = 'CECILIA', d = {"Yea! I wanted to know if you'd like to eat together."} })
	add({ n = 'RUBY', d = {"Sorry, but... I just finished. If I would've know you were free around", "this time, I would've waited..."} })
	add({ n = 'CECILIA', d = {"Nahh, it's okay. I don't think it's fair for you to wait to eat with me. Hahah!"} })
	add({ n = 'RUBY', d = {"B-but still, I feel bad."} })
	add({ n = 'CECILIA', d = {"I'm telling you, it's fine."} })
	add({ n = 'RUBY', d = {"...Alright. But, uh... I'd love to stay and chat, but I have a class soon."} })
	add({ n = 'CECILIA', d = {"Ah, okay. I'll see you at the Studio or something, okay?"} })
	add({ n = 'RUBY', d = {"Yes, okay. Goodbye."} })
	add({ n = 'CECILIA', d = {"See ya."} })

end

add({ n = 'CECILIA', d = {"(Well, now that it's just me, I guess I should get something to eat."} })

add({ n = '', d = {"..."} })

add({ d = {"........"} })

add({ d = {"The meal today was alright, but you did think it was a waste of money buying", "something that expensive."} })

add({ n = 'CECILIA', d = {"(Well, it's time for class... I better get going.)"}, node = 'nodes/week2/day9/night9.lua', f = next_time })

