--Morning Encounter with Damien

add({ n = 'CECILIA', lg = '', bg = bg.cecilia_room_day, d = {"...Ugh, I woke up early... There's not enough time for me to go back to sleep..."} })

add({ d = {"I wonder if Erika's up..."} })

add({ bg = bg.kitchen, d = {"Erika...? You here?"} })

add({ d = {"..."} })

add({ d = {"(Judging by the dishes in the sink that weren't there yesterday... She's already gone out.)"} })

add({ d = {"(What am I supposed to do now?)"} })

add({ d = {"...Ugh..."} })

add({ d = {"(I guess I should just... go to school early. Maybe look at books in the library", "since my class is near there.)"} })

add({ n = '', bg = '', d = {"..."} })

add({ d = {"At the library..."} })

add({ n = 'CECILIA', d = {"(...Holy crap, looking at books when you're still half asleep is boring.)"} })

add({ d = {"(And class begins in like... twenty minutes...)"} })

add({ d = {"Ugh... What to do...?"} })

add({ n = '', d = {"Boredly turning the corner, you spy a familiar beanie..."} })

add({ n = 'CECILIA', d = {"(Damien...? What's he doing here so early?)"} })

add({ n = '', d = {"When you approached the sleeping young man, you see him jolt up and look around in", "confusion."} })

add({ n = 'CECILIA', d = {"U-um... Mornin', sunshine."} })

add({ n = 'DAMIEN', d = {"Ugh... Passed out again."} })

add({ n = 'CECILIA', d = {"Uh... 'again'? You pass out on campus often?"} })

add({ n = 'DAMIEN', d = {"...Yeah. Damn band's got me up all night..."} })

add({ n = 'CECILIA', d = {"Band? You play in a band?"} })

add({ n = 'DAMIEN', d = {"Not quite, but damn... Sometimes I think I'm in the band."} })

add({ n = 'CECILIA', d = {"Hmm... Well still, that's pretty cool! What instrument do you play?"} })

add({ n = 'DAMIEN', d = {"For this... the guitar. But I play a little bass and piano too."} })

add({ n  = 'CECILIA', d = {"Piano!? You don't seem sophisticated enough to..."} })

add({ n = 'DAMIEN', d = {"...Not sophisticated enough, huh?"} })

add({ n = 'CECILIA', d = {"Ahahah, oops! Didn't mean to say that..."} })

add({ n = 'DAMIEN', d = {"...So you really think that. Heh. Well, I need to get to class. See ya."} })

add({ n = 'CECILIA', d = {"H-hey, don't leave so suddenly! I-it was just a joke!"} })

add({ n = 'DAMIEN', d = {"Yeah, I know... You dork."} })

add({ n = '', d = {"With a smirk on his face, Damien left you."} })

add({ n = 'CECILIA', d = {"(...I don't think I'll ever understand him. But, it doesn't matter.)"} })

add({ d = {"(I have class soon and I need to get going...)"}, node = 'nodes/week2/day11/afternoon.lua', f = function() gs.damien = gs.damien + 5 end })