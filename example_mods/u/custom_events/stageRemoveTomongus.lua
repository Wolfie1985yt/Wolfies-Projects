function onEvent(name,v1,v2)
	if name == 'stageRemoveTomongus' then
		removeLuaSprite('stars');
		removeLuaSprite('weebStreet');
	end
end