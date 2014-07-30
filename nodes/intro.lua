gs.month = 'Sep'
gs.day   = 12
gs.dow   = 'Sun'
gs.time  = 'night'

add({ sm = sm.mc, m = mu.friendly, d = "I hear a girl crying." })

add({ d = "I hesitantly flip on the lights." })

add({ n = 'CECILIA', bg = bg.ghost_cg1, sm = sm.mc_shock, d = "EEEEEEEK!  A GHOST!" })

add({ n = 'GHOST', lg = lg.ghost, bg = bg.cecilia_room_night, d = { "I'm not a ghost.", "I'm a real girl." } })

add({ n = 'GHOST', sm = sm.mc, d = { "I'm leaving.", "Goodbye." } })

add({ n = '', lg = '', d = "That was weird." })

add({ lg = '', d = "I'm going to sleep." })

add({ bg = '', d = "Zzzzzzzzzzz.", node = 'nodes/ch1/start.lua' })

