-- Quest with Ruby in Art Studio
add({ d = {"(I know! I can try to break the rock hard ice with", "some light conversation about her hobbies."} })

add({ d = {"Uh... are you apart of the... oh-- Art club?"} })

add({ n = 'GIRL', d = {"Huh? O-oh... Yea... Do you need something?"} })

add({ n = 'CECILIA', d = {"Um, I just wanted to talk about Art. I-I draw a", "little myself..."} })

add({ n = 'GIRL', d = {"O-oh? Well, the Art club is always looking for new members..."} })

add({ n = 'CECILIA', d = {"Oh? When's the next meeting? I may try and join!"} })

add({ n = 'GIRL', d = {"W-well, there's technically a meeting right now... But as you", "can s-see, no one came."} })

add({ n = 'CECILIA', d = {"It sounds fun, but what exactly do I need to do", "for this club? Just makes art?"} })

add({ n = 'GIRL', d = {"Yea, pretty much. There's other stuff, like participating", "in art contest and holding galleries at the end of each", "quarter... But I don't think we can if no one shows up."} })

add({ n = 'CECILIA', d = {"Hm, well... I'm not really interested in doing that kind", "of that stuff... But I would like to improve my art skills."} })

add({ d = {"Maybe even learn more about other art forms, like cermaics."} })

add({ n = 'GIRL', d = {"!!"} })

add({ n = 'CECILIA', d = {"O-oh! Uh... I'm sorry... for everything."} })

add({ n = 'GIRL', d = {"N-no, it's alright... I shouldn't be moping over something", "that can be redone."} })

add({ n = 'CECILIA', d = {"Yeah!"} })

add({ d = {"Hey... How about I help you remake it?"} })

add({ n = 'GIRL', d = {"H-huh?!"} })

add({ n = 'CECILIA', d = {"Yea, I can make it up to you by doing this!"} })

add({ n = 'GIRL', d = {"U-uh... I don't think that's possible... You've never", "done ceramics before... Right?"} })

add({ n = 'CECILIA', d = {"A-ah... true..."} })

add({ d = {"But still, let me make you something! It may not be anything really", "fancy, but... I wanna make it up to you."} })

add({ n = 'GIRL', d = {"A-ah... Okay... Oh! By the way, my name is Ruby."} })

add({ n = 'CECILIA', d = {"Ah, my name is Cecilia. Nice to meet you, Ruby!"} })

--Is the below correct?

--[[ MY ANSWER
	I moved the next_time function call into the first add of night3.lua.
	I also placed code that updates the game state (gs) into a function that
	is in the last add of this node file.  Notice that the last line in this
	function is qu.next(); this means the code moves to the next element in
	the queue automatically without the user clicking to go next.
--]]

add({ 
	n = '',
	d = {"The two of you talked about various forms of Art before your", "next class"}
})

add({ d = {"The day went on with nothing interesting happening..."}, node = 'nodes/week1/day3/night3.lua', f = next_time })

