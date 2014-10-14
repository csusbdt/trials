--Study time with Damien

add({ n = 'CECILIA', d = {"(I shouldn't bother him too much... Hopefully he won't mind me studying next to", "him.)"} })

add({ n = '', d = {"You approached him, though he didn't notice."} })

add({ d = {"You sat next to him, and fish through the bag for your textbooks."} })

add({ d = {"...After you find the book you were looking for, you start studying."} })

add({ d = {"..."} })

add({ d = {"........."} })

add({ n = 'DAMIEN', d = {"...Oh, finally. After 3 chapters, I finally get it done."} })

add({ d = {"...? Wh-what?"} })

add({ d = {"When did you get here?"} })

add({ n = 'CECILIA', d = {"M-me? I've been here for about twenty minutes or so."} })

add({ n = 'DAMIEN', d = {"Twenty... oh geez. I missed my class."} })

add({ n = 'CECILIA', d = {"So you don't skip all the time?"} })

add({ n = 'DAMIEN', d = {"Not all the time... I do skip Physics though."} })

add({ n = 'CECILIA', d = {"Heheheheh, I see..."} })

add({ n = 'DAMIEN', d = {"Speaking of Physics... Is that the notes for it?"} })

add({ n = 'CECILIA', d = {"Yup, if you were there yesterday, you'd know that we have a test next Wednesday."} })

add({ n = 'DAMIEN', d = {"Yea, yea, save the lecture. Can I copy them down?"} })

if gs.damien >= 20 then
	add({ n = 'CECILIA', d = {"Fine... Only because two heads are better than one."} }0
else
	add({ n = 'CECILIA', d = {"Wh-what?! No way!"} })
	add({ n = 'DAMIEN', d = {"Why not?!"} })
	add({ n = 'CECILIA', d = {"Because, I mean... You should really come to lecture and learn."} })
	add({ d = {"Copying notes isn't going to save your grade..."} })
	add({ n = 'DAMIEN', d = {"..."} })
	add({ n = 'CECILIA', d = {"B-but! For this time only, I'll let you copy them."} })
end

add({ n = 'DAMIEN', d = {"Heheh, great, thanks!"} })

add({ n = 'CECILIA', d = {"Right, let's get started..."} })

add({ n = '', d = {"..."} })

add({ d = {"........"} })

add({ n = 'CECILIA', d = {"Okay, we'll stop for today. My class is gonna start soon."} })

add({ n = 'DAMIEN', d = {"Right, thanks. I'll ask you again for the rest later."} })

add({ n = '', d = {"After packing up your stuff, you left Damien and went to your next class."}, node = 'nodes/week2/day11/night11.lua' })