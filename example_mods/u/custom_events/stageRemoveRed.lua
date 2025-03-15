function onEvent(name,v1,v2)
	if name == 'stageRemoveRed' then		
		removeLuaSprite('polus_custom_sky', 'stages/polus/polus_custom_sky');

		removeLuaSprite('polusrocks', 'stages/polus/polusrocks');

		removeLuaSprite('polusHills', 'stages/polus/polusHills');

		removeLuaSprite('polus_custom_lab', 'stages/polus/polus_custom_lab');

		removeLuaSprite('polus_custom_floor', 'stages/polus/polus_custom_floor');

		removeLuaSprite('snow', 'stages/polus/snow');
	end
end