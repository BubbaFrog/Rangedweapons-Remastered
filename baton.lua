dofile(minetest.get_modpath("rangedweapons") .. "/itemsound.lua")

minetest.register_tool("rangedweapons:baton", {
	description = "Police Baton",
	inventory_image = "rangedweapons_baton.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=4, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
	sounds = {
	node = "rangedweapons_hit",
	player = "rangedweapons_hit",
   },
})
