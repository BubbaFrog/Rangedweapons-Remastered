local i18n = explosives.i18n
local set_arm = explosives.set_arm
local set_time = explosives.set_time
local boom = explosives.boom
local detonate = explosives.detonate

minetest.register_node("rangedweapons:landmine", {
	description = i18n('Land mine'),
	paramtype = "light",
	tiles = {
		"explosives_landmine_top.png",
		"explosives_landmine_bottom.png",
		"explosives_landmine_side.png",
		"explosives_landmine_side.png",
		"explosives_landmine_side.png",
		"explosives_landmine_side.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, -0.1875, 0.5}, -- NodeBox1
			{-0.5, -0.5, -0.1875, 0.5, -0.1875, 0.1875}, -- NodeBox2
			{-0.3125, -0.5, -0.4375, 0.3125, -0.1875, 0.4375}, -- NodeBox3
			{-0.4375, -0.5, -0.3125, 0.4375, -0.1875, 0.3125}, -- NodeBox4
			{-0.375, -0.5, -0.375, 0.375, -0.1875, 0.375}, -- NodeBox5
			{-0.4375, -0.1875, -0.125, 0.4375, -0.0625, 0.125}, -- NodeBox6
			{-0.125, -0.1875, -0.4375, 0.125, -0.0625, 0.4375}, -- NodeBox7
			{-0.125, -0.0625, -0.125, 0.125, 0.0625, 0.125}, -- NodeBox8
		}
	},
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
	tiles = {
		"explosives_landmine_top.png",
		"explosives_landmine_bottom.png",
		"explosives_landmine_side.png",
		"explosives_landmine_side.png",
		"explosives_landmine_side.png",
		"explosives_landmine_side.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.5, 0.1875, -0.1875, 0.5}, -- NodeBox1
			{-0.5, -0.5, -0.1875, 0.5, -0.1875, 0.1875}, -- NodeBox2
			{-0.3125, -0.5, -0.4375, 0.3125, -0.1875, 0.4375}, -- NodeBox3
			{-0.4375, -0.5, -0.3125, 0.4375, -0.1875, 0.3125}, -- NodeBox4
			{-0.375, -0.5, -0.375, 0.375, -0.1875, 0.375}, -- NodeBox5
			{-0.4375, -0.1875, -0.125, 0.4375, -0.0625, 0.125}, -- NodeBox6
			{-0.125, -0.1875, -0.4375, 0.125, -0.0625, 0.4375}, -- NodeBox7
			{-0.125, -0.0625, -0.125, 0.125, 0.0625, 0.125}, -- NodeBox8
		}
	},
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
	tiles = {
		"explosives_navalmine_top.png",
		"explosives_navalmine_bottom.png",
		"explosives_navalmine_side.png",
		"explosives_navalmine_side.png",
		"explosives_navalmine_side.png",
		"explosives_navalmine_side.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.3125, -0.125, 0.125, 0.3125, 0.125}, -- NodeBox1
			{-0.125, -0.125, -0.3125, 0.125, 0.125, 0.3125}, -- NodeBox2
			{-0.3125, -0.125, -0.125, 0.3125, 0.125, 0.125}, -- NodeBox3
			{-0.1875, -0.1875, -0.25, 0.1875, 0.1875, 0.25}, -- NodeBox5
			{-0.25, -0.1875, -0.1875, 0.25, 0.1875, 0.1875}, -- NodeBox6
			{-0.1875, -0.25, -0.1875, 0.1875, 0.25, 0.1875}, -- NodeBox7
			{-0.0625, -0.25, -0.25, 0.0625, 0.25, 0.25}, -- NodeBox8
			{-0.25, -0.25, -0.0625, 0.25, 0.25, 0.0625}, -- NodeBox9
			{-0.25, -0.0625, -0.25, 0.25, 0.0625, 0.25}, -- NodeBox10
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox11
			{-0.5, -0.0625, -0.0625, 0.5, 0.0625, 0.0625}, -- NodeBox12
			{-0.0625, -0.0625, -0.5, 0.0625, 0.0625, 0.5}, -- NodeBox13
			{0.25, 0.25, -0.375, 0.375, 0.375, -0.25}, -- NodeBox16
			{-0.375, 0.25, -0.375, -0.25, 0.375, -0.25}, -- NodeBox17
			{0.25, 0.25, 0.25, 0.375, 0.375, 0.375}, -- NodeBox18
			{-0.375, 0.25, 0.25, -0.25, 0.375, 0.375}, -- NodeBox19
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-5/16, -5/16, -5/16, 5/16, 5/16, 5/16}, -- NodeBox1
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox11
			{-0.5, -0.0625, -0.0625, 0.5, 0.0625, 0.0625}, -- NodeBox12
			{-0.0625, -0.0625, -0.5, 0.0625, 0.0625, 0.5}, -- NodeBox13
			{0.25, 0.25, -0.375, 0.375, 0.375, -0.25}, -- NodeBox16
			{-0.375, 0.25, -0.375, -0.25, 0.375, -0.25}, -- NodeBox17
			{0.25, 0.25, 0.25, 0.375, 0.375, 0.375}, -- NodeBox18
			{-0.375, 0.25, 0.25, -0.25, 0.375, 0.375}, -- NodeBox19			
		}
	},
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
	tiles = {
		"explosives_navalmine_top.png",
		"explosives_navalmine_bottom.png",
		"explosives_navalmine_side.png",
		"explosives_navalmine_side.png",
		"explosives_navalmine_side.png",
		"explosives_navalmine_side.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.3125, -0.125, 0.125, 0.3125, 0.125}, -- NodeBox1
			{-0.125, -0.125, -0.3125, 0.125, 0.125, 0.3125}, -- NodeBox2
			{-0.3125, -0.125, -0.125, 0.3125, 0.125, 0.125}, -- NodeBox3
			{-0.1875, -0.1875, -0.25, 0.1875, 0.1875, 0.25}, -- NodeBox5
			{-0.25, -0.1875, -0.1875, 0.25, 0.1875, 0.1875}, -- NodeBox6
			{-0.1875, -0.25, -0.1875, 0.1875, 0.25, 0.1875}, -- NodeBox7
			{-0.0625, -0.25, -0.25, 0.0625, 0.25, 0.25}, -- NodeBox8
			{-0.25, -0.25, -0.0625, 0.25, 0.25, 0.0625}, -- NodeBox9
			{-0.25, -0.0625, -0.25, 0.25, 0.0625, 0.25}, -- NodeBox10
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox11
			{-0.5, -0.0625, -0.0625, 0.5, 0.0625, 0.0625}, -- NodeBox12
			{-0.0625, -0.0625, -0.5, 0.0625, 0.0625, 0.5}, -- NodeBox13
			{0.25, 0.25, -0.375, 0.375, 0.375, -0.25}, -- NodeBox16
			{-0.375, 0.25, -0.375, -0.25, 0.375, -0.25}, -- NodeBox17
			{0.25, 0.25, 0.25, 0.375, 0.375, 0.375}, -- NodeBox18
			{-0.375, 0.25, 0.25, -0.25, 0.375, 0.375}, -- NodeBox19
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-5/16, -5/16, -5/16, 5/16, 5/16, 5/16}, -- NodeBox1
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625}, -- NodeBox11
			{-0.5, -0.0625, -0.0625, 0.5, 0.0625, 0.0625}, -- NodeBox12
			{-0.0625, -0.0625, -0.5, 0.0625, 0.0625, 0.5}, -- NodeBox13
			{0.25, 0.25, -0.375, 0.375, 0.375, -0.25}, -- NodeBox16
			{-0.375, 0.25, -0.375, -0.25, 0.375, -0.25}, -- NodeBox17
			{0.25, 0.25, 0.25, 0.375, 0.375, 0.375}, -- NodeBox18
			{-0.375, 0.25, 0.25, -0.25, 0.375, 0.375}, -- NodeBox19			
		}
	},
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
	tiles = {
		"explosives_timebomb_top.png",
		"explosives_timebomb_bottom.png",
		"explosives_timebomb_side.png",
		"explosives_timebomb_side.png^[transformFX",
		"explosives_timebomb_front.png",
		"explosives_timebomb_front.png"
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5}, -- NodeBox11
			{-0.5, -0.25, -0.375, 0.5, 0, 0.375}, -- NodeBox12
			{-0.5, 0, -0.25, 0.5, 0.25, 0.25}, -- NodeBox13
			{-0.3125, 0.25, -0.1875, 0.3125, 0.3125, 0.1875}, -- NodeBox14
		}
	},
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
