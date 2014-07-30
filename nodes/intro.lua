gs.month = 'Sep'
gs.day   = 12
gs.dow   = 'Sun'
gs.time  = 'Night'

add({ sm = sm.mc, d = { "Returning home from a night out with my friend, I stepped into my pitch", "black room." } })

add({ d = { "Tonight was my first night as college students, so my friend, Erika,", "pitched an idea to go out for a reunion dinner." } })

add({ d = { "We got back late, and everything was pitch black... There wasn't enough", "street lights on the street next to my window, so everything was so dark", "I could't see anything!" } })

add({ d = { "When I closed the door behind me, I heard some soft sobbing." } })

add({ d = { "This is my first time living in college dorms and I knew they were" , "notorious for having thin walls but it sounded like someone was crying" , "in MY room!" } })

add({ bg = bg.cecilia_room_night, d = { "I hesitantly flipped on the light switch, and at first, I saw no one." } })

add({ d = { "However, when I looked at the corner behind my desk, I saw a litte girl." } })

add({ bg = bg.ghost_cg1, sm = sm.mc_shock, d = { "A little girl was sitting in the corner with tears streaming down her face." , "She had pale white skin and dull blonde hair..." } })

add({ d = { "The girl seemed to be covered in a soft glow, but..."} })

add({ n = 'CECILIA', d = { "Maybe I'm just tired and imagining things?"} })

add({ sm = sm.mc_shock, d = { "Huh... What...? WHAT THE--!!"} })

add({ d = { "What the heck are you doing in my room?!" } })

add({ n = 'GIRL', d = { "H-huh...? Y-You can see me?" } })

add({ n = 'CECILIA', sm = sm.mc, d = { "What do you mean, 'You can see me?'?" , "Of course I can!" } })

add({ n = '', bg = bg.cecilia_room_night, lg = lg.ghost_smile, d = { "The girl cracked a bright smile, one that was full of youth and innocence" , "as she stood up from her place on the floor."} })

add({ n = 'GIRL', d = { "I'm so glad someone is finally noticing me!" } })

add({ n = 'CECILIA', sm = sm.mc, d = { "What do you mean? Are you some kind of runaway?"} })

add({ sm = sm.mc_upset, d = { "(A runaway that managed to break into my room...)"} })

add({ n = 'POSSILBE RUNAWAY', sm = sm.mc, lg = lg.ghost_worry, d = { "Runaway...? No... You see..."} })

add({ n = '', d = { "The girl fidgeted around a bit uncomfortably for a few moments before" , "finally speaking... "} })

add({ n = 'POSSIBLE RUNAWAY', d = { "I'm a ghost here..."} })

add({ n = 'CECILIA', sm = sm.mc_shock2, d = { "A...A..."} })

add({ sm = sm.mc_shock, d = { "A GHOST?!"} })

add({ n = 'CECILIA', d = { "(A Ghost? Who does this kid think she's fooling?)"} })

add({ d = {"(But... That glow... That pale light that seems to surround her... It seems", "very... ghost like...)"} })

add({ sm = sm.mc_upset, lg = lg.ghost, d = {"(No no no! This kid's just trying to play mind games with me,", "there's no way she could be...)"} })

add({ lg = lg.ghost_smile, n = '', d = {"And then I saw it... I saw her float a few inches above the floor. She", "started to circle around me, forcing me to accept this very true", "fact."} })

add({ n = 'CECILIA', d = {"(Sh-she really is a ghost!!)"} })

add({ n = '', d = {"She stopped in front of me, landing back on to the floor and looking back up to me"} })

add({ d = {"I started to back away slowly as I stared at the ghost. The words I wanted to say--","no scream were stuck in my throat, choking me."} })

add({ n = 'GHOST', lg = lg.ghost, d = { "Yea, so can ya help me? I've been stuck here so long, I just" , "want to get out of here!"} })

add({ n = '', d = { "The ghost kept pleading for me to help her as I backed away.", "However, the ghost girl saw me trying to escape..."} })

add({ n = 'GHOST', lg = lg.ghost_shock, d = { "W... Wait! Don't go!"} })

add({ n = 'CECILIA', d = { "(Crap, missed my chance! Better make a run for it before she traps me", "here and tries to eat my soul or something!)"} })

add({ n = '', d = { "I jolted towards the door and quickly opened it."} })

add({ n = 'GHOST',lg = lg.ghost_worry, d = { "No, please... -hic- P-please don't leave me", "alone h-here again! -hic- -sob-"} })

add({ n = '', bg = '', lg = '', d = { "I shut the door and pressed my body up against it as a weight", "for a short second. I quickly dashed from the dark hallway over to", "my friend's room."} })

add({ bg = bg.ericka_room, d = { "I ran in without knocking, and quickly shut the door behind" , "me. My friend was laying on her bed, reading a book with a pokki", "in her mouth."} })

add({ n = 'ERIKA', lg = '', d = { "Hey... Is something wrong? You looked like you--"} })

add({ n = 'CECILIA', d = { "Don't say it!! I-I think I actually SAW a ghost..."} })

add({ n = 'ERIKA', d = { "You saw... a ghost? Pfft, Hahahah!!", "I'm not an idiot, Cecilia!"} })

add({ n = 'CECILIA', sm = sm.mc_upset, d = { "I'm being serious! I really did!"} })

add({ n = 'ERIKA', d = { "Don't ghosts normally haunt old, abandoned places? These dorms JUST", "opened for students! There's no way it's haunted!"} })

add({ n = 'CECILIA', d = { "Well, I saw one!"} })

add({ sm = sm.mc_shock, d = { "Can I just stay in your room for the night? Just this once? I'm probably", "just tired and saw stuff, but I'm way too spooked to go back", "in there again!"} })

add({ n = 'ERIKA', d = { "Fine, fine. But only for tonight. Heheh!"} })

add({ n = 'CECILIA', sm = sm.mc_sweat, d = { "Alright, thanks! You're a life saver!"} })

add({ n = '', lg = '', bg = '', sm = sm.mc, d = { "As I laid down beside my friend in her bed, I thought", "about everything that happened just then..." } })

add({ d = { "Of course, I just told myself that I was tired, and I was hallucinating...", "But it felt so real..." } })

add({ sm = sm.mc_sweat, d = { "'Oh well,' I thought. 'I'll just deal with this tomorrow...", "If I can get to sleep...'" } })

add({ sm = '', d = { "But then, tomorrow came..." }, node = 'nodes/ch1/start.lua' })
