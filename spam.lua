minetest.register_node("rangedweapons:spam", {
	description = "canned spam",
	drawtype = "plantlike",
	tiles = {"rangedweapons_spam.png"},
	inventory_image = "rangedweapons_spam.png",
	wield_image = "rangedweapons_spam.png",
	paramtype = "light",
	walkable = false,
	drop = "rangedweapons:spam",
	groups = {oddly_breakable_by_hand=3},
	on_use = minetest.item_eat(6),
})

minetest.register_craft({
	output = 'rangedweapons:spam 4',
	recipe = {
		{'default:apple'},
		{'default:steel_ingot'},
	}
})
