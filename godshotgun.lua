

minetest.register_tool("rangedweapons:godshotgun_r", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.4},
	description = "",
	rw_next_reload = "rangedweapons:godshotgun_rr",
	load_sound = "rangedweapons_god",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_godshotgun_rld.png",
})
minetest.register_tool("rangedweapons:godshotgun_rr", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.4},
	description = "",
	rw_next_reload = "rangedweapons:godshotgun_rrr",
	load_sound = "rangedweapons_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_godshotgun.png",
})
minetest.register_tool("rangedweapons:godshotgun_rrr", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.4},
	description = "",
	rw_next_reload = "rangedweapons:godshotgun",
	load_sound = "rangedweapons_god",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_godshotgun.png",
})
-------------------------------------------

	minetest.register_tool("rangedweapons:godshotgun", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.4},
		description = "" ..core.colorize("#35cdff","Gods Shotgun\n") ..core.colorize("#FFFFFF", "Ranged damage: 1\n") ..core.colorize("#FFFFFF", "projectiles: 5\n") ..core.colorize("#FFFFFF", "Gun gravity: 4\n") ..core.colorize("#FFFFFF", "accuracy: 40%\n") ..core.colorize("#FFFFFF", "knockback: 5\n") ..core.colorize("#FFFFFF", "Reload delay: 1.5\n")  ..core.colorize("#FFFFFF", "Clip size: 77\n") ..core.colorize("#FFFFFF", "Critical chance: 5%\n") ..core.colorize("#FFFFFF", "Critical efficiency: 2.0x\n")  ..core.colorize("#FFFFFF", "Ammunition: 12 gauge shells and incendiary\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.2 (full-auto)\n") ..core.colorize("#FFFFFF", "Gun type: shotgun\n") ..core.colorize("#FFFFFF", "Bullet velocity: 25"),
	range = 0,
	inventory_image = "rangedweapons_godshotgun.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=1,knockback=5},
		gun_crit = 5,
		gun_critEffc = 2.0,
		suitable_ammo = {{"rangedweapons:shell",77},{"rangedweapons:incendiary",77}},
		gun_skill = {"shotgun_skill",40},
		gun_magazine = "rangedweapons:drum_mag",
		gun_icon = "rangedweapons_godshotgun_icon.png",
		gun_unloaded = "rangedweapons:godshotgun_r",
		gun_velocity = 25,
		gun_accuracy = 40,
		gun_cooldown = 0.1,
		gun_reload = 1.5/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_durability = 750,
		gun_smokeSize = 8,
		gun_door_breaking = 1,
		gun_projectiles = 5,
		gun_gravity = 4,
		gun_unload_sound = "rangedweapons_rifle_clip_out",
		gun_sound = "rangedweapons_assaultshotgun",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,
})






