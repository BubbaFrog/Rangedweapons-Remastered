minetest.register_tool("rangedweapons:metalbat", {
    description = "metal bat",
	inventory_image = "rangedweapons_metalbat.png",
    stack_max = 1,
	tool_capabilities = {
		full_punch_interval = 0.05,
		max_drop_level=0,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	}
})
