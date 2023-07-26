

minetest.register_tool("rangedweapons:squirtgun_rld", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	loaded_gun = "rangedweapons:squirtgun",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_squirtgun_rld.png",
})
minetest.register_tool("rangedweapons:squirtgun_r", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:squirtgun_rr",
	load_sound = "rangedweapons_handgun_mag_in",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_squirtgun.png",
})

minetest.register_tool("rangedweapons:squirtgun_rr", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:squirtgun_rrr",
	load_sound = "rangedweapons_reload_a",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_squirtgun.png",
})

minetest.register_tool("rangedweapons:squirtgun_rrr", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	rw_next_reload = "rangedweapons:squirtgun",
	load_sound = "rangedweapons_reload_b",
	inventory_image = "rangedweapons_squirtgun_rld.png",
})


minetest.register_tool("rangedweapons:squirtgun", {
		description = "" ..core.colorize("#35cdff","Water Gun\n") ..core.colorize("#FFFFFF", "Gun damage: 0\n")..core.colorize("#FFFFFF", "Accuracy: 90%\n")  ..core.colorize("#FFFFFF", "gun knockback: 3\n") ..core.colorize("#FFFFFF", "Gun crit chance: 10%\n")..core.colorize("#FFFFFF", "Critical efficiency: 2x\n") ..core.colorize("#FFFFFF", "Reload delay: 1.1\n")..core.colorize("#FFFFFF", "Clip size: 8\n") ..core.colorize("#FFFFFF", "Ammunition: Container of water\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.5\n") ..core.colorize("#FFFFFF", "Gun type: Handgun\n") ..core.colorize("#FFFFFF", "Bullet velocity: 20"),
	range = 0,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	inventory_image = "rangedweapons_squirtgun.png",
	RW_gun_capabilities = {
		gun_damage = {fleshy=0,knockback=1},
		gun_crit = 10,
		gun_critEffc = 2.0,
		suitable_ammo = {{"rangedweapons:watercontainer",8}},
		gun_skill = {"handgun_skill",40},
		gun_magazine = "rangedweapons:handgun_mag_black",
		gun_icon = "rangedweapons_squirtgun_icon.png",
		gun_unloaded = "rangedweapons:squirtgun_r",
		gun_cooling = "rangedweapons:squirtgun",
		gun_velocity = 20,
		gun_accuracy = 90,
		gun_cooldown = 0.5,
		gun_reload = 1.1/4,
		gun_projectiles = 1,
		gun_smokeSize = 5,
		has_shell = 1,
		gun_durability = 450,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_waterspray",
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


