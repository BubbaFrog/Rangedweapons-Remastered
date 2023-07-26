local i18n = explosives.i18n
local set_arm = explosives.set_arm
local set_time = explosives.set_time
local boom = explosives.boom
local detonate = explosives.detonate

minetest.register_node("rangedweapons:landmine", {
	description = i18n('Land mine'),
	paramtype = "light",
	paramtype2 = "facedir", --optional
	tiles = {"explosives_landmine.png"},
	drawtype = "mesh",
	mesh = "landmine.obj",
	groups = {
		dig_immediate = 2,
		explody = 1,
	},
	on_punch = function(pos, node, puncher)
		if puncher:get_wielded_item():get_name() == "default:torch" then
			boom(pos)
		end
	end,
	on_rightclick = set_arm,
	on_timer = function(pos, elapsed)
		minetest.remove_node(pos)
		minetest.place_node(pos, {name = 'rangedweapons:landmine_armed'})
	end,
	on_blast = boom,
})

minetest.register_node("rangedweapons:landmine_armed", {
	description = i18n('Land mine (armed)'),
	paramtype = "light",
	paramtype2 = "facedir", --optional
	tiles = {"explosives_landmine.png"},
	drawtype = "mesh",
	mesh = "landmine.obj",
	groups = {
		landmine = 1,
		not_in_creative_inventory = 1,
	},
	on_punch = function(pos, node, puncher)
		if puncher:get_wielded_item():get_name() == "default:torch" then
			boom(pos)
		else
			detonate(pos)
		end
	end,
	on_timer = boom,
	on_blast = boom,
})

minetest.register_node("rangedweapons:navalmine", {
	description = i18n('Naval mine'),
	paramtype = "light",
	paramtype2 = "facedir", --optional
	tiles = {"explosives_navalmine.png"},
	drawtype = "mesh",
	mesh = "navalmine.obj",
	groups = {
		dig_immediate = 2,
		explody = 1,
	},
	on_punch = function(pos, node, puncher)
		if puncher:get_wielded_item():get_name() == "default:torch" then
			boom(pos)
		end
	end,
	on_rightclick = set_arm,
	on_timer = function(pos, elapsed)
		--make sure it didn't move
		if minetest.get_node(pos).name == "rangedweapons:navalmine" then
			minetest.set_node(pos, {name = 'rangedweapons:navalmine_armed'})
			minetest.get_meta(pos):set_int("drifting", 0)
		end
	end,
	on_blast = boom,
})

minetest.register_node("rangedweapons:navalmine_armed", {
	description = i18n('Naval mine (armed)'),
	paramtype = "light",
	paramtype2 = "facedir", --optional
	tiles = {"explosives_navalmine.png"},
	drawtype = "mesh",
	mesh = "navalmine.obj",
	groups = {
		explody = 1,
		navalmine = 1,
		not_in_creative_inventory = 1
	},
	drop = "rangedweapons:navalmine", --shouldn't happen
	on_punch = function(pos, node, puncher)
		if puncher:get_wielded_item():get_name() == "default:torch" then
			boom(pos)
		end
	end,
	on_blast = boom,
})

minetest.register_node("rangedweapons:timebomb", {
	description = i18n('Time bomb'),
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {"explosives_timebomb.png"},
	drawtype = "mesh",
	mesh = "timebomb.obj",
	groups = {
		dig_immediate = 2,
		explody = 1,
	},
	on_punch = function(pos, node, puncher)
		if puncher:get_wielded_item():get_name() == "default:torch" then
			boom(pos)
		end
		if minetest.get_node_timer(pos):is_started() then
			boom(pos)
		end
	end,
	on_rightclick = set_time,
	on_timer = boom,
	on_blast = boom,
})
