--Encounter Ruby

add({ n = 'CECILIA', d = {"(I'm starved! I need to get some food before my next class."} })

add({ n = '', bg = bg.cafe, d = {"At the Cafe..."} })

add({ n = 'CECILIA', d = {"(Hey, wait... is that that one girl? Oh it is!)"} })

add({ n = '', d = {"The girl you bumped into on Monday was sitting alone at a table in the", "cafe."} })

add({ n = 'CECILIA', d = {"(I should probably approach her...)"} })

add({ lg = lg.ruby_worry, d = {"Oh, hello!"} })

add({ n = 'RUBY?', d = {"Uwah! Oh, i-it's you..."} })

add({ n = '', d = {"The girl seems very flustered."} })

add({ n = 'CECILIA', d = {"I just wanted to apologize for breaking your vase..."} })

add({ n = 'RUBY?', d = {"No, it's alright. It wasn't a school project or anything..."} })

add({ n = 'CECILIA', d = {"Still, I feel bad... Oh, hey--"} })

add({ n = '???', d = {"Hey, Ruby!"} })

add({ n = '', d = {"An unknown girl interrupted you."} })

add({ n = 'RUBY', d = {"Coming! I-I'm sorry, but I need to go..."} })

add({ n = 'CECILIA', d = {"It's fine. Bye!"} })

add({ n = 'CECILIA', lg = '', d = {"(I wasn't able to ask her about the marbles... And even if I did", "I don't know what she'd tell me."} })

add({ d = {"The whole time we were talking, she seemed very nervous... Maybe she still is", "upset over what happened on Monday? At any rate, I should try to talk", "to her more and learn more about her."} })

add({ n = '', d = {"..."}, f = function() gs.ruby = gs.ruby + 5} })

add({ n = 'CECILIA', d = {"Lunch was delicious! But now it's time for class..."}, node = 'nodes/week1/day4/night4', f = next_time })
