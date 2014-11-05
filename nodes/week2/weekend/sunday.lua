--Sunday, the 14th day. End of second week. Geez, this took too long.

add({ n = '', bg = bg.cecilia_room_day, d = {"Sunday Afternoon..."} })

add({ lg = lg.ghost, d = {"You been talking to Kaira about your progress recently."} })

if gs.ruby > gs.will or gs.ruby > gs.damien then
	add({ n = 'KAIRA', d = {"Wow... I see... From what you tell me, it seems like that Ruby girl is your", "best bet for right now."} })
	add({ n = 'CECILIA', d = {"Yea, only if she opens up to me."} })
	add({ n = 'KAIRA', d = {"Yea, that is a problem with her..."} })

elseif gs.will > gs.ruby or gs.will > gs.damien then
	add({ n = 'KAIRA', d = {"Oh, I see. It seems like you're really close to your TA. However, he seems", "really busy all the time... Maybe you should try to go after someone else for right", "now?"} })
	add({ n = 'CECILIA', d = {"I might consider it, but... I'd rather not."} })
	add({ n = 'KAIRA', d = {"It's okay."} })

elsif gs.damien > gs.ruby or gs.damien > gs.will then
	add({ n = 'KAIRA', d = {"Huh, how interesting. Even though you don't get along with your lab partner,", "you seem to talk to him often... But will you really be alright?"} })
	add({ d = {"You sound as if you two are gunna fight all the time."} })
	add({ n = 'CECILIA', d = {"I think it'll be alright... Hopefully."} })
	add({ n = 'KAIRA', d = {"Okay..."} })
end

add({ n = 'KAIRA', d = {"Hey, I just wanna ask you... Do you really think I'll be able to meet my friends", "again?"} })

add({ n = 'CECILIA', d = {"We can't say for sure... I mean, I don't really know anyone that well, and", "everyone's seems to guarded about that kind of stuff."} })

add({ d = {"To be honest, in the beginning, I thought this whole thing was silly. And I", "think a part of me still feels that way."} })

add({ d = {"But I won't give up. I'll give it the best I can. That's just the kind of", "person I am, at the core."} })

add({ d = {"But, remember, we may not be able to find everyone okay...?"} })

add({ n = 'KAIRA', d = {"Okay... I understand..."} })

add({ n = 'CECILIA', d = {"Okay, good."} })

add({ n = 'KAIRA', d = {"So, what are you gonna do today?"} })

add({ n = 'CECILIA', d = {"I don't know... I'm feeling really lazy today..."} })

add({ d = {"I think I'm just gonna watch some shows online or something today."} })

add({ n = 'KAIRA', d = {"Shows? Can I watch too?"} })

add({ n = 'CECILIA', d = {"Sure... It's not like you'll understand anything about it anyways."} })

add({ n = '', d = {"..."} })

add({ d = {"You spent the rest of the day hanging out with Kaira and watching shows."} })

add({ d = {"Despite her age, she's actually quite knowledgeable about more grownup things..."} })

add({ d = {"..."} })

add({ 
	bg = bg.cecilia_room_night, 
	lg = '', 
	d = {"In the night, Kaira disappeared and you decided to do some homework before", "prepping for bed."}
	node = 'nodes/week3/day15/morning.lua'
})