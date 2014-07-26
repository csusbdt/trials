gs.month = 'Sep'
gs.day   = 12
gs.dow   = 'Sun'
gs.time  = 'night'

add({ sm = sm.mc, m = mu.friendly, d = { "I hear a girl crying." } })

add({ d = { "I hesitantly flip on the lights." } })

add({ n = 'CECILIA', bg = bg.cecilia_room_night, sm = sm.mc_shock.png, d = { "EEEEEEEK!  A GHOST!" } })

add({ n = 'GHOST', lg = lg.ghost_smile, m = '', d = { "..." } })

add({ d = { "..." } })

add({ f = function() next_time(); gonode("nodes/ch1.lua") end })

