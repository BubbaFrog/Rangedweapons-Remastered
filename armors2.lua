--[[
rangedweapons_loot = 
{
"rangedweapons_inv_helmet_biker", "rangedweapons_inv_helmet_construction", "rangedweapons_inv_helmet_military", "rangedweapons_inv_helmet_swat", 
"rangedweapons_inv_vest_civilian", "rangedweapons_inv_vest_military", "rangedweapons_inv_vest_police", "rangedweapons_inv_vest_swat"
}
--]]
local enable_craft = false

armor:register_armor("rangedweapons:trollmask", {
	description = ("Trollface Mask"),
	inventory_image = "rangedweapons_trollmask_inv.png",
	groups = {armor_head=1, armor_heal=0, armor_use=800,
		physics_speed=-0.04, physics_gravity=0.04},
	armor_groups = {fleshy=7},
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},

})

armor:register_armor("rangedweapons:skullmask", {
	description = ("Skull Mask"),
	inventory_image = "rangedweapons_skullmask_inv.png",
	groups = {armor_head=1, armor_heal=0, armor_use=800},
	armor_groups = {fleshy=5},
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("rangedweapons:riotshield", {
	description = ("Riot Shield"),
	inventory_image = "rangedweapons_riotshield_inv.png",
	groups = {armor_shield=1, armor_heal=0, armor_use=800},
	armor_groups = {fleshy=5},
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})

armor:register_armor("rangedweapons:eyepatch", {
	description = ("Eye patch"),
	inventory_image = "rangedweapons_eyepatch_inv.png",
	groups = {armor_head=1, armor_heal=0, armor_use=800},
	armor_groups = {fleshy=3},
	
	damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
})
