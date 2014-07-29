--[[
function gonode(node)
	gs.node = node
	ui.reset()
	qu.reset()
	dofile(node)
	qu.next()
end
--]]

--[[
function load_node(node)
	gs.node = node
	ui.reset()
	qu.reset()
	dofile(node)
	qu.next()
end
--]]

