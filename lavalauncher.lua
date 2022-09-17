minetest.register_tool("rangedweapons:lavalauncher_r", {
	stack_max= 1,
	wield_scale = {x=2.0,y=2.0,z=1.4},
	description = "",
	rw_next_reload = "rangedweapons:lavalauncher",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_lavalauncher_rld.png",
})

	minetest.register_tool("rangedweapons:lavalauncher", {
	stack_max= 1,
	wield_scale = {x=2.0,y=2.0,z=1.4},
		description = "" ..core.colorize("#35cdff","Lava Blaster\n") ..core.colorize("#FFFFFF", "Gun damage: 9\n") ..core.colorize("#FFFFFF", "accuracy: 65%\n") ..core.colorize("#FFFFFF", "Gun knockback: 7\n")  ..core.colorize("#FFFFFF", "Gun Critical chance: 13%\n")..core.colorize("#FFFFFF", "Critical efficiency: 3.0x\n")  ..core.colorize("#FFFFFF", "Reload delay: 1.0\n") ..core.colorize("#FFFFFF", "Clip size: 100\n")   ..core.colorize("#FFFFFF", "Ammunition: 7.62mm rounds\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.09(full-auto)\n") ..core.colorize("#FFFFFF", "Gun type: lavalauncher\n") ..core.colorize("#FFFFFF", "Block penetration: 12%\n")
..core.colorize("#FFFFFF", "Enemy penetration: 27%\n") ..core.colorize("#FFFFFF", "Bullet velocity: 64"),
	range = 0,
	inventory_image = "rangedweapons_lavalauncher.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=9,knockback=7},
		gun_crit = 13,
		gun_critEffc = 3.0,
		suitable_ammo = {{"rangedweapons:lavammo",100}},
		gun_skill = {"heavy_skill",60},
		gun_icon = "rangedweapons_lavalauncher_icon.png",
		gun_unloaded = "rangedweapons:lavalauncher_r",
		gun_velocity = 64,
		gun_accuracy = 65,
		gun_cooldown = 0.09,
		gun_reload = 1.0,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 2750,
		gun_smokeSize = 5,
		gun_mob_penetration = 27,
		gun_node_penetration = 12,
		gun_unload_sound = "rangedweapons_lavalauncher_rld",
		gun_sound = "rangedweapons_lavalauncher_shoot",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,

	inventory_image = "rangedweapons_lavalauncher.png",
})




