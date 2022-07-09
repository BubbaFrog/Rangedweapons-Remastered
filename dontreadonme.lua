minetest.register_node("rangedweapons:dontreadonme", {
	description = "Dont Tread On Me Block",
	drawtype = "nodebox",
	tiles = {"rangedweapons_dontreadonme.png"},
	paramtype = "wallmounted",
	drop = "rangedweapons:dontreadonme",
	groups = {cracky=1},
	
})


minetest.register_craft({
	output = "rangedweapons:dontreadonme 12",
	recipe = {
		{"default:paper"},
		{"group:sand"},
	}
})
