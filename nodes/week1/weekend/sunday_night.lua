--You can go out again tonight

add( n = 'CECILIA', d = {"(Oh sheesh, it's nighttime. I could go to sleep early...)"} })

add({ d = {"(...But, I want to stay up a bit. I should find something to do...)"} })

add({ 
	d = {"(I guess I'll go for a walk, but where to...?)"},
	c = {
		{t = "Go to the Library."}, f = function() gs.will = gs.will + 5 end, node = 'nodes/week1/weekend/library.lua'},
		{t = "Walk around."}, node = 'nodes/week1/weekend/stroll.lua'}

})