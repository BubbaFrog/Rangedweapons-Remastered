minetest.register_node("rangedweapons:barbedwire", {
	description = "Barbed Wire",
	drawtype = "plantlike",
	visual_scale = 1.2,
	tiles = {"rangedweapons_barbedwire.png"},
	inventory_image = "rangedweapons_barbedwire.png",
	wield_image = "rangedweapons_barbedwire.png",
	paramtype = "light",
	walkable = false,
	damage_per_second = 2,
	drop = "rangedweapons:barbedwire",
	groups = {snappy=2},
	
})


minetest.register_craft({
	output = "rangedweapons:barbedwire 12",
	recipe = {
		{"default:stick"},
		{"default:steel_ingot"},
	}
})
