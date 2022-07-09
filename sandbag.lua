minetest.register_node("rangedweapons:sandbag", {
	description = "Sandbags",
	drawtype = "normal",
	tiles = {"rangedweapons_sandbag.png"},
	paramtype = "light",
	drop = "rangedweapons:sandbag",
	groups = {crumbly=2, falling_node=1},
	
})


minetest.register_craft({
	output = "rangedweapons:sandbag 12",
	recipe = {
		{"default:paper"},
		{"group:sand"},
	}
})
