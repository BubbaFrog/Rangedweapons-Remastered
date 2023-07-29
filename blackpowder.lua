minetest.register_craftitem("rangedweapons:blackpowder", {
	stack_max= 420,
	wield_scale = {x=0.4,y=0.4,z=1.2},
		description = "" ..core.colorize("#35cdff","Black Powder\n")..core.colorize("#FFFFFF", "Bullet damage: 8 \n") ..core.colorize("#FFFFFF", "Bullet crit efficiency: 0.15 \n") ..core.colorize("#FFFFFF", "Bullet crit chance: 1% \n") ..core.colorize("#FFFFFF", "Bullet velocity: 20 \n") ..core.colorize("#FFFFFF", "Bullet knockback: 4 \n") ..core.colorize("#FFFFFF", "Bullet gravity: 5 \n")  ..core.colorize("#FFFFFF", "Bullet projectile multiplier: 1.5x\n")   ..core.colorize("#FFFFFF", "Ammunition for Black Powder Weapons"),
	inventory_image = "rangedweapons_blackpowder.png",
	RW_ammo_capabilities = {
		ammo_damage = {fleshy=2,knockback=4},
		ammo_projectile_multiplier = 1.0,
		ammo_critEffc = 0.15,
		ammo_crit = 1,
		ammo_velocity = 20,
		ammo_glass_breaking = 1,
		ammo_entity = "rangedweapons:shot_bullet",
		ammo_visual = "sprite",
		ammo_texture = "rangedweapons_spark.png",
		shell_entity = "rangedweapons:empty_shell",
		shell_visual = "wielditem",
		shell_texture = "rangedweapons:shell_nothingdrop",
		ammo_gravity = 5,
		ammo_projectile_size = 0.00175,
		ammo_projectile_glow = 10,
		has_sparks = 1,
		ignites_explosives = 1,
	},
})
