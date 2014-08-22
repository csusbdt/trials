--Check for progress

if gs.ruby_quest_progress == 0 then
	add({ n = 'CECILIA', d = {"Huh, so this is one of the Art rooms people", "talk a lot about outside of the college."} })
	add({ n = 'PROFESSOR', d = {"Yes? Do you need something?"} })
	add({ n = '', d = {"A professor came from another room."} })
	add({ n = 'CECILIA', d = {"Uh, yes. I want to know how to use the ceramics equipment.", "I want to make a vase for a loved one and I heard anyone", "can use it for free."} })
	add({ n = 'PROFESSOR', d = {"Oh, alright. Since you're new here, I'll give you a little", "tutorial on using this equipment, along with how to make various", "pottery using ceramics."} })
	add({ n = 'CECILIA', d = {"Alright! Thank you!"} })
	add({ d = {"(With this, I'll be able to make something that satisfies", "Ruby in no time!"} })
	add({ n = '', d = {"..."} })
	add({ d = {"......"} })
	add({ d = {"................."} })
	add({ n = 'CECILIA', d = {"(I haven't quite started the project, but at least I", "have someone here who can help me.)"} })

elseif gs.ruby_quest_progress == 1 then
	add({ n = 'CECILIA', d = {"Alright! Let's get start!"} })
	add({ n = '', d = {"..."} })
	add({ d = {"......"} })
	add({ d = {"................."} })
	add({ n = 'CECILIA', d = {"(The professor insisted that I start with someone easier like making a plate", "so I decided to make a little tea set.)"} })
	add({ d = {"(It may not be exactly like what I broke, but this will at least", "brighten her mood a little.)"} })
	
elseif gs.ruby_quest_progress == 2 then
	add({ n = 'CECILIA', d = {"Another day, another grind."} })
	add({ n = '', d = {"..."} })
	add({ d = {"......"} })
	add({ d = {"................."} })
	add({ n = 'CECILIA', d = {"(The tea set is coming along perfectly! Most of the plates are finished, but", "the real challenge is the teapot...)"} })

elseif gs.ruby_quest_progress == 3 then
	add({ n = 'CECILIA', d = {"I'm actually really excited to finish this!"} })
	add({ n = '', d = {"..."} })
	add({ d = {"......"} })
	add({ d = {"................."} })
	add({ n = 'CECILIA', d = {"(As I thought, the teapot is really hard... The neck kept falling off", "whenever I molded it...)"} })
	add({ d = {"(But I finished the plates and cups, so now I just need to", "get the neck right and paint it...)"} })

elseif gs.ruby_quest_progress == 4 then
	add({ n = 'CECILIA', d = {"It's almost done! Keep at it! Keep at it!"} })
	add({ n = '', d = {"..."} })
	add({ d = {"......"} })
	add({ d = {"................."} })
	add({ n = 'CECILIA', d = {"(I finished everything! Everything is molded and painted! The teacher said", "she'll put them in the heater tonight and fire it up!"} })
	add({ d = {"I'll come back later and check up on it..."} })
	
elseif gs.ruby_quest_progress == 5 then
	add({ n = 'CECILIA', d = {"It's done! It looks so nice, almost like a pro!"} })
	add({ d = {"(I'll leave it here and show this to Ruby when I get the chance...)"} })

elseif gs.ruby_quest_progress == 6 then
	add({ n = '', d = {"Upon entering the Art studio, you saw Ruby there working late."} })
	add({ n = 'CECILIA', lg = lg.ruby_worry, d = {"Hey, Ruby! Perfect timing! Look at what I made!"} })
	add({ n = '', d = {"You brought out your tea set, that was decorated with a rosey red design."} })
	add({ n = 'RUBY', d = {"Wow! That's pretty cool!"} })
	add({ n = 'CECILIA', d = {"Is it?"} })
	add({ n = 'RUBY', d = {"I don't know why... But when I look at this, I can't", "but to feel a little nostalgic..."} })
	add({ d = {"Can I keep this?"} })
	add({ n = 'CECILIA', d = {"Uh, sure! I can just make another set if I ever need to!"} })
	add({ n = 'RUBY', d = {"Thank you!"} })
	add({ 
		f = function() 
			gs.ruby = gs.ruby + 10
			gs.ruby_quest_progress = -1	
			gs.ruby_quest_complete = 1
			qu.next()
		end 
	})

end

add({ f = function() gs.ruby_quest_progress = gs.ruby_quest_progress + 1 end })

