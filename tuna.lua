minetest.register_node("rangedweapons:tuna", {
	description = "canned tuna",
	drawtype = "plantlike",
	tiles = {"rangedweapons_tuna.png"},
	inventory_image = "rangedweapons_tuna.png",
	wield_image = "rangedweapons_tuna.png",
	paramtype = "light",
	walkable = false,
	drop = "rangedweapons:tuna",
	groups = {oddly_breakable_by_hand=3},
	on_use = minetest.item_eat(6),
})

minetest.register_craft({
	output = 'rangedweapons:tuna 4',
	recipe = {
		{'default:apple'},
		{'default:steel_ingot'},
	}
})
