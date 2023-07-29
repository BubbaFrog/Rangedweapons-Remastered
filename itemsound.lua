-- stu's tool sounds methods

minetest.register_on_punchnode(function(pos, node, puncher)
	local tool = puncher:get_wielded_item()
	if tool then
		local def = tool:get_definition()
		if def and def.sounds and def.sounds.node then
			minetest.sound_play(def.sounds.node, {pos = pos})
		end
	end
end)

minetest.register_on_punchplayer(function(player, hitter)
	local tool = hitter:get_wielded_item()
	if tool then
		local def = tool:get_definition()
		if def and def.sounds and def.sounds.player then
			minetest.sound_play(def.sounds.player, {object = player})
		end
	end
end)
