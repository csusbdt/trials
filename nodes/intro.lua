gs.month = 'Sep'
gs.day   = 12
gs.dow   = 'Sun'
gs.time  = 'night'

add({ sm = 'sm/MC.png', m = 'music/friendly.wav', d = { "I hear a girl crying." } })

add({ d = { "I hesitantly flip on the lights." } })

add({ n = 'CECILIA', bg = 'bg/cecilias_room_night.jpg', sm = 'sm/MC_shock.png', d = { "EEEEEEEK!  A GHOST!" } })

add({ n = 'GHOST', lg = 'lg/ghost_smile.png', m = '', d = { "..." } })

add({ d = { "..." } })

add({ f = function() next_time(); gonode("nodes/ch1.lua") end })

