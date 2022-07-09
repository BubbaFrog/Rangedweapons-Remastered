minetest.register_node("rangedweapons:ration", {
	description = "ration",
	drawtype = "plantlike",
	tiles = {"rangedweapons_ration.png"},
	inventory_image = "rangedweapons_ration.png",
	wield_image = "rangedweapons_ration.png",
	paramtype = "light",
	walkable = false,
	drop = "rangedweapons:ration",
	groups = {oddly_breakable_by_hand=3},
	on_use = minetest.item_eat(6),
})

minetest.register_craft({
	output = 'rangedweapons:ration 4',
	recipe = {
		{'default:apple'},
		{'default:steel_ingot'},
	}
})
