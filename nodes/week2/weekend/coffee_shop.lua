--Encounter Damien during his parttime job. Wootz.

add({ n = 'CECILIA', d = {"How about a coffee run? I'm in the mood for a frappe!"} })

add({ n = 'ERIKA', d = {"Huh? That's strange, I thought you don't care for coffee..."} })

add({ n = 'CECILIA', d = {"The Frappe's can be made with no coffee, so I think I'll be alright."} })

add({ d = {"Come on. I know you're been craving coffee lately!"} })

add({ n = 'ERIKA', d = {"Yeah... Ha, you know me so well. Well, let's go!"} })

add({ n = '', bg = '', lg = '', d = {"..."} })

add({ bg = bg.independent_cafe_2, d = {"At the coffee shop..."} })

add({ n = 'ERIKA', d = {"This place...? I thought you were going to go for something a little more...", "well-known?"} })

add({ n = 'CECILIA', d = {"Yeah, but I'm so tired of huge chain places! Mom and Pop's are the best!"} })

add({ n = 'ERIKA', d = {"Hahahaha, whatever you say..."} })

add({ n = '', d = {"..."} })

add({ d = {"After ordering your drinks..."} })

add({ n = 'CECILIA', d = {"Huh?"} })

add({ n = '', d = {"From the corner of your eye, you notice a familiar blue hair covered with it's", "usually green beanie."} })

add({ n = 'CECILIA', d = {"I-is that Damien?"} })

add({ n = 'ERIKA', d = {"Damien? You mean the guy who gives you a hard time in physics?"} })

add({ n = '', d = {"Erika looks over to the male who is preparing your coffee and gives a small chuckle."} })

add({ n = 'ERIKA', d = {"Heh, he looks a little more toned down than I imagined..."} })

add({ d = {"You should go talk to him."} })

add({ n = 'CECILIA', d = {"W-what?! Not in a million years! That guy... he always makes me feel as if I'm crazy", "or over-emotional... or sometimes just plain stupid."} })

add({ n = 'ERIKA', d = {"That's so mean! I mean, you are pretty dumb and crazy, but over-emotional! That's crossing a line!"} })

add({ n = 'CECILIA', d = {"WHA--!"} })

add({ n = 'ERIKA', d = {"At any rate, you should at least go talk to him."} })

add({ n = 'CECILIA', d = {"...I don't wanna."} })

add({ n = 'ERIKA', d = {"Well, you have to. Our drinks are going to be finished soon anyways."} })

add({ n = 'CECILIA', d = {"...What, I have to get the drinks now? Ugh... Fine, whatever."} })

add({ d = {"If anything bad happens, I'm blaming you!"} })

if gs.damien_scene == 1 then
	add({ 
		n = '', 
		d = {"Erika gave you a small chuckle as you hesitantly walked over to the 'Pick-up Order'", "counter."},
		node = 'nodes/week2/weekend/damien1.lua',
		f = function()
			gs.damien = gs.damien + 5
		end
	})

else
	add({ 
		n = '', 
		d = {"Erika gave you a small chuckle as you hesitantly walked over to the 'Pick-up Order'", "counter."},
		node = 'nodes/week2/weekend/damien0.lua',
	})

end