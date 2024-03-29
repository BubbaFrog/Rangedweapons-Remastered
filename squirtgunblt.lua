minetest.register_craftitem("rangedweapons:watercontainer", {
	stack_max= 200,
	wield_scale = {x=0.4,y=0.4,z=1.2},
		description = "" ..core.colorize("#35cdff","Container of water\n")..core.colorize("#FFFFFF", "Bullet damage: 0 \n") ..core.colorize("#FFFFFF", "Bullet crit efficiency: 0.4 \n") ..core.colorize("#FFFFFF", "Bullet crit chance: 2% \n") ..core.colorize("#FFFFFF", "Bullet velocity: 35 \n") ..core.colorize("#FFFFFF", "Bullet knockback: 3 \n")    ..core.colorize("#FFFFFF", "Ammunition for Squirt Guns"),
	inventory_image = "rangedweapons_watercontainer.png",
	RW_ammo_capabilities = {
		ammo_damage = {fleshy=0,knockback=0},
		ammo_projectile_multiplier = 1.0,
		ammo_critEffc = 0.15,
		ammo_crit = 1,
		ammo_velocity = 20,
		ammo_glass_breaking = 1,
		ammo_entity = "rangedweapons:shot_bullet",
		ammo_visual = "sprite",
		ammo_texture = "rangedweapons_waterblt.png",
		shell_entity = "rangedweapons:empty_shell",
		shell_visual = "wielditem",
		shell_texture = "rangedweapons:shell_nothingdrop",
		ammo_gravity = 5,
		ammo_projectile_size = 0.00175,
		ammo_projectile_glow = 1,
		has_sparks = 1,
		ignites_explosives = 1,
	},
})
