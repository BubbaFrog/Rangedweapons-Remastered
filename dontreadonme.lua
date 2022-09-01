minetest.register_node("rangedweapons:dontradonme", {
	description = ("Don't Tread On Me Sign"),
	drawtype = "signlike",
	visual_scale = 2.0,
	tiles = {"rangedweapons_dontreadonme.png",},
	inventory_image = "rangedweapons_dontreadonme.png",
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 5,
	is_ground_content = true,
	selection_box = {
		type = "wallmounted",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4, 0.5}
	},
	groups = {cracky=3,dig_immediate=3},
})

