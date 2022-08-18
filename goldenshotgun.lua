minetest.register_tool("rangedweapons:goldenshotgun_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:goldenshotgun",
	loaded_sound = "rangedweapons_shotgun_rld",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_goldenshotgun_rld.png",
})

minetest.register_tool("rangedweapons:goldenshotgun", {
		description = "" ..core.colorize("#35cdff","Golden Shotgun\n") ..core.colorize("#FFFFFF", "Ranged damage: 3\n") ..core.colorize("#FFFFFF", "projectiles: 6\n") ..core.colorize("#FFFFFF", "Gun gravity: 3\n") ..core.colorize("#FFFFFF", "Accuracy: 52%\n")..core.colorize("#FFFFFF", "knockback: 7\n") ..core.colorize("#FFFFFF", "Critical chance: 7%\n") ..core.colorize("#FFFFFF", "Critical efficiency: 2.1x\n") ..core.colorize("#FFFFFF", "Ammunition: 12 gauge shells\n") ..core.colorize("#FFFFFF", "Pump delay: 0.45\n")..core.colorize("#FFFFFF", "Clip size: 8\n") ..core.colorize("#27a600", "Gun is ready to fire!\n") ..core.colorize("#fff21c", "Right-click to load in a bullet!\n")  ..core.colorize("#FFFFFF", "Gun type: shotgun\n") ..core.colorize("#FFFFFF", "Bullet velocity: 32"),
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	inventory_image = "rangedweapons_goldenshotgun.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=3,knockback=7},
		gun_crit = 7,
		gun_critEffc = 2.1,
		suitable_ammo = {{"rangedweapons:shell",4}},
		gun_skill = {"shotgun_skill",20},
		gun_icon = "rangedweapons_goldenshotgun_icon.png",
		gun_unloaded = "rangedweapons:goldenshotgun_rld",
		gun_cooling = "rangedweapons:goldenshotgun_uld",
		gun_velocity = 32,
		gun_accuracy = 52,
		gun_cooldown = 0.45,
		gun_gravity = 3,
		gun_reload = 0.25,
		gun_projectiles = 6,
		has_shell = 0,
		gun_durability = 550,
		gun_smokeSize = 15,
		gun_door_breaking = 1,
		gun_sound = "rangedweapons_oldshotgun",
		gun_unload_sound = "rangedweapons_shell_insert",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_single_load_gun(itemstack, user, "")
return itemstack
end,
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_gun(itemstack, user)
return itemstack
	end,
})

minetest.register_tool("rangedweapons:goldenshotgun_uld", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	range = 0,
		description = "" ..core.colorize("#35cdff","Golden Shotgun\n") ..core.colorize("#FFFFFF", "Ranged damage: 2\n") ..core.colorize("#FFFFFF", "projectiles: 6\n") ..core.colorize("#FFFFFF", "Gun gravity: 3\n") ..core.colorize("#FFFFFF", "Accuracy: 52%\n")..core.colorize("#FFFFFF", "knockback: 7\n") ..core.colorize("#FFFFFF", "Critical chance: 7%\n") ..core.colorize("#FFFFFF", "Critical efficiency: 2.1x\n") ..core.colorize("#FFFFFF", "Ammunition: 12 gauge shells\n") ..core.colorize("#FFFFFF", "Pump delay: 0.45\n")..core.colorize("#FFFFFF", "Clip size: 8\n") ..core.colorize("#be0d00", "Right-click, to eject the empty shell!\n") ..core.colorize("#fff21c", "Right-click to load in a bullet!\n")  ..core.colorize("#FFFFFF", "Gun type: shotgun\n") ..core.colorize("#FFFFFF", "Bullet velocity: 28"),
	inventory_image = "rangedweapons_goldenshotgun.png",
	groups = {not_in_creative_inventory = 1},
	on_use = function(user)
		minetest.sound_play("rangedweapons_empty", {user})
	end,
on_secondary_use = function(itemstack, user, pointed_thing)
eject_shell(itemstack,user,"rangedweapons:goldenshotgun_rld",0.6,"rangedweapons_none","rangedweapons:empty_shell")
return itemstack
end,
})
