minetest.register_node("rangedweapons:medkit", {
	description = "Medkit",
	drawtype = "plantlike",
	tiles = {"rangedweapons_medkit.png"},
	inventory_image = "rangedweapons_medkit.png",
	wield_image = "rangedweapons_medkit.png",
	paramtype = "light",
	walkable = false,
	drop = "rangedweapons:medkit",
	groups = {oddly_breakable_by_hand=3},
	on_use = minetest.item_eat(6),
})

minetest.register_craft({
	output = 'rangedweapons:medkit 4',
	recipe = {
		{'default:apple'},
		{'default:steel_ingot'},
	}
})
