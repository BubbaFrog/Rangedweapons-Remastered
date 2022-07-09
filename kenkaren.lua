minetest.register_node("rangedweapons:kenkaren", {
	description = "Ken And Karen",
	drawtype = "nodebox",
	tiles = {"rangedweapons_kenkaren.png"},
	paramtype = "wallmounted",
	drop = "rangedweapons:kenkaren",
	groups = {cracky=1},
	
})


minetest.register_craft({
	output = "rangedweapons:kenkaren 12",
	recipe = {
		{"default:paper"},
		{"group:sand"},
	}
})
