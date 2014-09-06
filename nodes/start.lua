-- Initialize dispositions.
gs.ruby    = 0
gs.lily    = 0
gs.damien  = 0
gs.will    = 0
gs.jessie  = 0

-- Initialize Character's Main Event Scenes
gs.ruby_scene	= 0
gs.lily_scene	= 0
gs.damien_scene = 0
gs.will_scene   = 0
gs.jessie_scene = 0

ui.month = 'Sep'
ui.day   = 12
ui.dow   = 'Sun'
ui.time  = 'Night'

add({ node = 'nodes/intro.lua' })
--add({ node = 'nodes/test.lua' })
--add({ node = 'nodes/ch1/day3/ruby_quest.lua' })
qu.next()

