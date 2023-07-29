

minetest.register_tool("rangedweapons:magicsniper_uld", {
	stack_max= 1,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	range = 0,
		description = "" ..core.colorize("#35cdff","Shadow Sniper \n") ..core.colorize("#FFFFFF", "Ranged damage:22 + 75/sec of bullet lifetime\n")..core.colorize("#FFFFFF", "Accuracy: 100%\n") ..core.colorize("#FFFFFF", "knockback: 20\n") ..core.colorize("#FFFFFF", "Critical chance: 33%\n") ..core.colorize("#FFFFFF", "Critical efficiency: x3.25\n") ..core.colorize("#FFFFFF", "Ammunition: Shadow Bullet\n") ..core.colorize("#FFFFFF", "Rate of fire: 1.5\n") ..core.colorize("#FFFFFF", "Reload time: 2.5\n") ..core.colorize("#FFFFFF", "Zoom: 15x\n") ..core.colorize("#be0d00", "Right-click to eject empty bullet shell\n") ..core.colorize("#FFFFFF", "Clip size: 7\n") ..core.colorize("#FFFFFF", "Enemy penetration:45%\n") ..core.colorize("#FFFFFF", "Block penetration:15%\n") ..core.colorize("#FFFFFF", "Gun type: magic gun\n") ..core.colorize("#FFFFFF", "Bullet velocity: 80"),
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_magicsniper.png",
	weapon_zoom = 7.5,
	on_use = function(user)
		minetest.sound_play("rangedweapons_empty", {user})
	end,
on_secondary_use = function(itemstack, user, pointed_thing)
eject_shell(itemstack,user,"rangedweapons:magicsniper_rld",1.0,"rangedweapons_rifle_reload_a","rangedweapons:empty_shell")
return itemstack
end,
})


minetest.register_tool("rangedweapons:magicsniper_r", {
	rw_next_reload = "rangedweapons:magicsniper_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_magicsniper_noclip.png",
})
minetest.register_tool("rangedweapons:magicsniper_rr", {
	rw_next_reload = "rangedweapons:magicsniper_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_magicsniper.png",
})
minetest.register_tool("rangedweapons:magicsniper_rrr", {
	rw_next_reload = "rangedweapons:magicsniper",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_magicsniper_rld.png",
})


minetest.register_tool("rangedweapons:magicsniper_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	description = "",
	loaded_gun = "rangedweapons:magicsniper",
	loaded_sound = "rangedweapons_rifle_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_magicsniper_rld.png",
})


minetest.register_tool("rangedweapons:magicsniper", {
		description = "" ..core.colorize("#35cdff","Shadow Sniper \n") ..core.colorize("#FFFFFF", "Ranged damage:22 + 75/sec of bullet lifetime\n")..core.colorize("#FFFFFF", "Accuracy: 100%\n") ..core.colorize("#FFFFFF", "knockback: 20\n") ..core.colorize("#FFFFFF", "Critical chance: 33%\n") ..core.colorize("#FFFFFF", "Critical efficiency: x3.25\n") ..core.colorize("#FFFFFF", "Ammunition: Shadow Bullets\n") ..core.colorize("#FFFFFF", "Rate of fire: 1.5\n") ..core.colorize("#FFFFFF", "Reload time: 2.5\n") ..core.colorize("#FFFFFF", "Zoom: 15x\n") ..core.colorize("#27a600", "The gun is loaded!\n") ..core.colorize("#FFFFFF", "Clip size: 7\n") ..core.colorize("#FFFFFF", "Enemy penetration:45%\n") ..core.colorize("#FFFFFF", "Block penetration:15%\n") ..core.colorize("#FFFFFF", "Gun type: magic gun\n") ..core.colorize("#FFFFFF", "Bullet velocity: 80"),
	range = 0,
	weapon_zoom = 6,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	inventory_image = "rangedweapons_magicsniper.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=22,knockback=20},
		gun_crit = 33,
		gun_critEffc = 3.25,
		suitable_ammo = {{"rangedweapons:magicbullet",7}},
		gun_skill = {"rifle_skill",12},
		gun_magazine = "rangedweapons:rifle_mag",
		gun_icon = "rangedweapons_magicsniper_icon.png",
		gun_unloaded = "rangedweapons:magicsniper_r",
		gun_cooling = "rangedweapons:magicsniper_uld",
		gun_velocity = 80,
		gun_accuracy = 100,
		gun_cooldown = 1.5,
		gun_reload = 2.5/4,
		gun_projectiles = 1,
		has_shell = 0,
		gun_durability = 900,
		gun_smokeSize = 8,
		gun_dps = 75,
		gun_mob_penetration = 45,
		gun_node_penetration = 15,
		gun_unload_sound = "rangedweapons_rifle_clip_out",
		gun_sound = "rangedweapons_rifle_b",
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


