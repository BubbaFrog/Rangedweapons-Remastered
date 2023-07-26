


minetest.register_tool("rangedweapons:m1911_rld", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.5},
	description = "",
	range = 0,
	loaded_gun = "rangedweapons:m1911",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m1911_rld.png",
})
minetest.register_tool("rangedweapons:m1911_r", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.5},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:m1911",
	load_sound = "rangedweapons_handgun_mag_in",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m1911_rld.png",
})

minetest.register_tool("rangedweapons:m1911", {
		description = "" ..core.colorize("#35cdff","M1911\n")..core.colorize("#FFFFFF", "Ranged damage: 11\n") ..core.colorize("#FFFFFF", "Accuracy: 85%\n") ..core.colorize("#FFFFFF", "knockback: 6\n")  ..core.colorize("#FFFFFF", "Critical chance: 20%\n") ..core.colorize("#FFFFFF", "Critical efficiency: 3x\n")..core.colorize("#FFFFFF", "Reload delay: 0.6\n")..core.colorize("#FFFFFF", "Clip size: 8\n")  ..core.colorize("#FFFFFF", "Ammunition: .45acp\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.7\n") ..core.colorize("#FFFFFF", "Gun type: Handgun\n") ..core.colorize("#FFFFFF", "Block penetration: 5%\n")
..core.colorize("#FFFFFF", "penetration: 15%\n")..core.colorize("#FFFFFF", "Bullet velocity: 50"),
	wield_scale = {x=1.25,y=1.25,z=1.5},
	range = 0,
	inventory_image = "rangedweapons_m1911.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=11,knockback=6},
		gun_crit = 20,
		gun_critEffc = 2.2,
		suitable_ammo = {{"rangedweapons:45acp",8}},
		gun_skill = {"handgun_skill",40},
		gun_magazine = "rangedweapons:handgun_mag_white",
		gun_icon = "rangedweapons_m1911_icon.png",
		gun_unloaded = "rangedweapons:m1911_r",
		gun_cooling = "rangedweapons:m1911_rld",
		gun_velocity = 50,
		gun_accuracy = 85,
		gun_cooldown = 0.4,
		gun_reload = 0.6/1,
		gun_projectiles = 1,
		has_shell = 1,
		gun_durability = 900,
		gun_smokeSize = 7,
		gun_mob_penetration = 15,
		gun_node_penetration = 5,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_pistol",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_gun(itemstack, user)
return itemstack
	end,
})

minetest.register_tool("rangedweapons:golden_m1911_rld", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.5},
	description = "",
	range = 0,
	loaded_gun = "rangedweapons:golden_m1911",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_golden_m1911_rld.png",
})
minetest.register_tool("rangedweapons:golden_m1911_r", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.5},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:golden_m1911",
	load_sound = "rangedweapons_handgun_mag_in",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_golden_m1911_rld.png",
})

minetest.register_tool("rangedweapons:golden_m1911", {
		description = "" ..core.colorize("#35cdff","Golden M1911\n")..core.colorize("#FFFFFF", "Ranged damage: 14\n") ..core.colorize("#FFFFFF", "Accuracy: 90%\n") ..core.colorize("#FFFFFF", "knockback: 6\n")  ..core.colorize("#FFFFFF", "Critical chance: 23%\n") ..core.colorize("#FFFFFF", "Critical efficiency: 3x\n")..core.colorize("#FFFFFF", "Reload delay: 0.6\n")..core.colorize("#FFFFFF", "Clip size: 8\n")  ..core.colorize("#FFFFFF", "Ammunition: .45acp\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.75\n") ..core.colorize("#FFFFFF", "Gun type: Handgun\n") ..core.colorize("#FFFFFF", "Block penetration: 5%\n")
..core.colorize("#FFFFFF", "penetration: 15%\n")..core.colorize("#FFFFFF", "Bullet velocity: 50"),
	wield_scale = {x=1.25,y=1.25,z=1.5},
	range = 0,
	inventory_image = "rangedweapons_golden_m1911.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=14,knockback=6},
		gun_crit = 23,
		gun_critEffc = 2.2,
		suitable_ammo = {{"rangedweapons:45acp",8}},
		gun_skill = {"handgun_skill",38},
		gun_magazine = "rangedweapons:handgun_mag_white",
		gun_icon = "rangedweapons_golden_m1911_icon.png",
		gun_unloaded = "rangedweapons:golden_m1911_r",
		gun_cooling = "rangedweapons:golden_m1911_rld",
		gun_velocity = 50,
		gun_accuracy = 90,
		gun_cooldown = 0.4,
		gun_reload = 0.6/1,
		gun_projectiles = 1,
		has_shell = 1,
		gun_durability = 1000,
		gun_smokeSize = 7,
		gun_mob_penetration = 15,
		gun_node_penetration = 5,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_pistol",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_gun(itemstack, user)
return itemstack
	end,
})

