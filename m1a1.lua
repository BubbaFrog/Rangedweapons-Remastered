

minetest.register_tool("rangedweapons:m1a1_uld", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	range = 0,
		description = "" ..core.colorize("#35cdff","M1 Carbine Paratrooper Stock. \n") ..core.colorize("#FFFFFF", "Ranged damage:18 + 35/sec of bullet lifetime\n")..core.colorize("#FFFFFF", "Accuracy: 100%\n") ..core.colorize("#FFFFFF", "knockback: 15\n") ..core.colorize("#FFFFFF", "Critical chance: 30%\n") ..core.colorize("#FFFFFF", "Critical efficiency: x3\n") ..core.colorize("#FFFFFF", "Ammunition: 408 cheytac\n") ..core.colorize("#FFFFFF", "Rate of fire: 1.0\n") ..core.colorize("#FFFFFF", "Reload time: 2.0\n") ..core.colorize("#FFFFFF", "Zoom: 12x\n") ..core.colorize("#be0d00", "Right-click to eject empty bullet shell\n") ..core.colorize("#FFFFFF", "Clip size: 7\n") ..core.colorize("#FFFFFF", "Enemy penetration:30%\n") ..core.colorize("#FFFFFF", "Block penetration:10%\n") ..core.colorize("#FFFFFF", "Gun type: Rifle\n") ..core.colorize("#FFFFFF", "Bullet velocity: 75"),
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m1a1.png",
	weapon_zoom = 7.5,
	on_use = function(user)
		minetest.sound_play("rangedweapons_empty", {user})
	end,
on_secondary_use = function(itemstack, user, pointed_thing)
eject_shell(itemstack,user,"rangedweapons:m1a1_rld",1.0,"rangedweapons_rifle_reload_a","rangedweapons:empty_shell")
return itemstack
end,
})


minetest.register_tool("rangedweapons:m1a1_r", {
	rw_next_reload = "rangedweapons:m1a1_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m1a1_noclip.png",
})
minetest.register_tool("rangedweapons:m1a1_rr", {
	rw_next_reload = "rangedweapons:m1a1_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m1a1.png",
})
minetest.register_tool("rangedweapons:m1a1_rrr", {
	rw_next_reload = "rangedweapons:m1a1",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m1a1_rld.png",
})


minetest.register_tool("rangedweapons:m1a1_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:m1a1",
	loaded_sound = "rangedweapons_rifle_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m1a1_rld.png",
})


minetest.register_tool("rangedweapons:m1a1", {
		description = "" ..core.colorize("#35cdff","M1 Carbine Paratrooper Stock. \n") ..core.colorize("#FFFFFF", "Ranged damage:18 + 35/sec of bullet lifetime\n")..core.colorize("#FFFFFF", "Accuracy: 100%\n") ..core.colorize("#FFFFFF", "knockback: 15\n") ..core.colorize("#FFFFFF", "Critical chance: 30%\n") ..core.colorize("#FFFFFF", "Critical efficiency: x3\n") ..core.colorize("#FFFFFF", "Ammunition: 408 cheytac\n") ..core.colorize("#FFFFFF", "Rate of fire: 1.0\n") ..core.colorize("#FFFFFF", "Reload time: 2.0\n") ..core.colorize("#FFFFFF", "Zoom: 12x\n") ..core.colorize("#27a600", "The gun is loaded!\n") ..core.colorize("#FFFFFF", "Clip size: 7\n") ..core.colorize("#FFFFFF", "Enemy penetration:30%\n") ..core.colorize("#FFFFFF", "Block penetration:10%\n") ..core.colorize("#FFFFFF", "Gun type: Rifle\n") ..core.colorize("#FFFFFF", "Bullet velocity: 75"),
	range = 0,
	weapon_zoom = 7.5,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	inventory_image = "rangedweapons_m1a1.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=18,knockback=15},
		gun_crit = 30,
		gun_critEffc = 3.0,
		suitable_ammo = {{"rangedweapons:762mm",7}},
		gun_skill = {"rifle_skill",20},
		gun_magazine = "rangedweapons:rifle_mag",
		gun_icon = "rangedweapons_m1a1_icon.png",
		gun_unloaded = "rangedweapons:m1a1_r",
		gun_cooling = "rangedweapons:m1a1_uld",
		gun_velocity = 75,
		gun_accuracy = 100,
		gun_cooldown = 1.0,
		gun_reload = 2.0/4,
		gun_projectiles = 1,
		has_shell = 0,
		gun_durability = 700,
		gun_smokeSize = 8,
		gun_dps = 35,
		gun_mob_penetration = 30,
		gun_node_penetration = 10,
		gun_unload_sound = "rangedweapons_rifle_clip_out",
		gun_sound = "rangedweapons_mini14",
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

