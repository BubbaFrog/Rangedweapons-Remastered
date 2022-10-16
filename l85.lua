
minetest.register_tool("rangedweapons:l85_r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.20},
	description = "",
	rw_next_reload = "rangedweapons:l85_rr",
	load_sound = "rangedweapons_handgun_mag_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_l85_rld.png",
})

minetest.register_tool("rangedweapons:l85_rr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.20},
	description = "",
	rw_next_reload = "rangedweapons:l85_rrr",
	load_sound = "rangedweapons_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_l85.png",
})

minetest.register_tool("rangedweapons:l85_rrr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.20},
	description = "",
	rw_next_reload = "rangedweapons:l85",
	load_sound = "rangedweapons_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_l85.png",
})


	minetest.register_tool("rangedweapons:l85", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.20},
		description = "" ..core.colorize("#35cdff","l85\n") ..core.colorize("#FFFFFF", "Gun damage: 3\n") ..core.colorize("#FFFFFF", "accuracy: 74%\n") ..core.colorize("#FFFFFF", "Gun knockback: 1\n")  ..core.colorize("#FFFFFF", "Gun Critical chance: 7%\n")..core.colorize("#FFFFFF", "Critical efficiency: 2.0x\n")   ..core.colorize("#FFFFFF", "Reload delay: 1.0\n") ..core.colorize("#FFFFFF", "Clip size: 40/40\n")   ..core.colorize("#FFFFFF", "Ammunition: 9x19mm parabellum/10mm auto\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.075(full-auto)\n") ..core.colorize("#FFFFFF", "Gun type: sub-machinegun\n") ..core.colorize("#FFFFFF", "Bullet velocity: 25"),
	range = 0,
	inventory_image = "rangedweapons_l85.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=3,knockback=1},
		gun_crit = 7,
		gun_critEffc = 2.0,
		suitable_ammo = {{"rangedweapons:9mm",40},{"rangedweapons:762mm",40}},
		gun_skill = {"smg_skill",75},
		gun_magazine = "rangedweapons:machinepistol_mag",
		gun_icon = "rangedweapons_l85_icon.png",
		gun_unloaded = "rangedweapons:l85_r",
		gun_velocity = 25,
		gun_accuracy = 74,
		gun_cooldown = 0.075,
		gun_reload = 1.0/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 1600,
		gun_smokeSize = 4,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_assault_rifle",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,
})
