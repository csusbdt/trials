--Scene with Erika

add({ 
	n = 'CECILIA', 
	bg = '',
	d = {"-yawn- Hey... Erika."},
	f = next_afternoon 
})

add({ n = 'ERIKA', d = {"Oh hello. Waking up late as always?"} })

add({ n = 'CECILIA', d = {"Well, it's the weekend, and I don't really have much to do on the first week, so", "why not?"} })

add({ d = {"Heh, if you weren't training to be a housewife, you'd sleep in too."} })

add({ n = 'ERIKA', d = {"H-hey! It's not training... I just think that taking the time to learn how to cook", "and clean is important for an adult."} })

add({ n = 'CECILIA', d = {"You sayin' I ain't a grown-up?"} })

add({ n = 'ERIKA', d = {"Yeah."} })

add({ n = 'CECILIA', d = {"Ugh... Don't say it so casually! It makes it seem as if you're not joking..."} })

add({ n = 'ERIKA', d = {"Hahahah... So, what are you planning on doing for today?"} })

add({ n = 'CECILIA', d = {"I don't have any time consuming homework, so... I'm free. Why? Ya gonna take me", "out on a date?"} })

add({ n = 'ERIKA', d = {"...You're not my type."} })

add({ n = 'CECILIA', d = {"Ouch... It was just a joke."} })

add({ n = 'ERIKA', d = {"...I was just asking because I'm pretty free too. I'm planning on working hard during", "the week to ensure my weekends are free."} })

add({ d = {"So we can hang out."} })

add({ n = 'CECILIA', d = {"Awww! Erika...!"} })

add({ n = 'ERIKA', d = {"Heheheh... Don't get emotional, I plan on having a boyfriend during college. I gotta", "keep myself available for dates!"} })

add({ n = 'CECILIA', d = {"Of course, all in the name of your boytoy..."} })

add({ n = 'ERIKA', d = {"Heheheheh! Yea, so... If you have somewhere you want to go, just let me know, okay?"} })

add({ d = {"You could even invite some of the people you've met lately! Ohh~ It can be fun!"} })

add({ n = 'CECILIA', d = {"Wh-what?! I doubt any of them would say yes... They all seem very... disinterested in me..."} })

add({ n = 'ERIKA', d = {"You just gotta keep talking to them. Find out more about 'em... Trust me, you'll", "get friends soon enough."} })

add({ n = 'CECILIA', d = {"...I'll try."} })

add({ n = 'ERIKA', d = {"So, in terms of places you wanna go to, how about..."} })

add({ n = '', d = {"You talked with Erika for a long time about going out on the weekends."}, node = 'nodes/week1/weekend/sunday_night.lua', f = next_night })