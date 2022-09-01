minetest.register_craftitem("rangedweapons:bfgammo", {
	stack_max= 15,
	wield_scale = {x=1.2,y=1.2,z=2.4},
		description = "" ..core.colorize("#35cdff","bfg ammo\n")..core.colorize("#FFFFFF", "Bullet damage: 15 \n") ..core.colorize("#FFFFFF", "Bullet crit efficiency: 1.0 \n") ..core.colorize("#FFFFFF", "Bullet crit chance: 1% \n") ..core.colorize("#FFFFFF", "Bullet velocity: 20 \n") ..core.colorize("#FFFFFF", "Bullet knockback: 20 \n") ..core.colorize("#FFFFFF", "Bullet gravity: 5 \n")  ..core.colorize("#FFFFFF", "explodes on impact with a radius of 3\n")  ..core.colorize("#FFFFFF", "Ammunition for The BFG"),
	inventory_image = "rangedweapons_bfg_ammo.png",
	RW_ammo_capabilities = {
		ammo_damage = {fleshy=15,knockback=20},
		ammo_critEffc = 1.0,
		ammo_crit = 1,
		ammo_velocity = 20,
		ammo_glass_breaking = 1,
		ammo_entity = "rangedweapons:shot_bullet",
		ammo_visual = "sprite",
		ammo_texture = "rangedweapons_bfg_blt.png",
		ammo_projectile_size = 0.15,
		has_sparks = 1,
		ignites_explosives = 1,

OnCollision = function(player,bullet,target)
	tnt.boom(bullet.object:get_pos() , {radius = 3})
end,
ammo_particles = {
	velocity = {x=1,y=1,z=1},
	acceleration = {x=1,y=1,z=1},
	collisiondetection = true,
	lifetime = 1,
	texture = "tnt_smoke.png",
	minsize = 50,
	maxsize = 75,
	pos_randomness = 50,
	glow = 20,
	gravity = 10,
	amount = {1,1}
},
},
})
