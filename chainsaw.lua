dofile(minetest.get_modpath("rangedweapons") .. "/itemsound.lua")

minetest.register_tool("rangedweapons:chainsaw", {
	description = "The Chainsaw",
	inventory_image = "rangedweapons_chainsaw.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=12},
	},
	sounds = {
	node = "rangedweapons_chainsaw",
	player = "rangedweapons_chainsaw",
   },
})
