minetest.register_node("rangedweapons:kenosha", {
	description = "Kyle Rittenhouse Block",
	drawtype = "nodebox",
	tiles = {"rangedweapons_kyle.png"},
	paramtype = "wallmounted",
	drop = "rangedweapons:kenosha",
	groups = {cracky=1},
	
})


minetest.register_craft({
	output = "rangedweapons:kenosha 12",
	recipe = {
		{"default:paper"},
		{"group:sand"},
	}
})
