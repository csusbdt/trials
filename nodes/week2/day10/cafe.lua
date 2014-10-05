--Will is there, but he's surrounded by girls.

add({ n = 'CECILIA', d = {"(Oh geez, why am I so hungry? Gotta get food right now...)"} })

add({ n = '', bg = bg.cafe, d = {"At the cafe..."} })

add({ n = 'CECILIA', d = {"(Oh, there's William. But he's surrounded by girls again... Will I ever get to talk", "to him?)"} })

add({ d = {"(Whatever, I'm on a mission for food. I wouldn't want him to stop me from eating", "anyways."} })

if gs.will >= 10 then
	add({ n = '', lg = lg.will, d = {"As you walked over to your favorite food place, you looked over at William once", "more and see him smile at you for a quick second."} })
	add({ n = 'CECILIA', d = {"(Was... that my imagination...? No...)"} })
	add({ d = {"(One of those girls saw him and looked at me... Her glare was so cold...)"} })
	add({ d = {"(Still, I can't believe he noticed me in this busy cafe...)"}, f = function() gs.will = gs.will + 5 end })

end

add({ n = '', lg = '', d = {"..."} })

add({ d = {"............"} })

add({ n = 'CECILIA', d = {"(Mmm... Delicious as always!)"} })

add({ d = {"(Oh crap, it's time for my next class...)"}, node = 'nodes/week2/day10/night10.lua', f = next_time })

