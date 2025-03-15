function onEvent(name,v1,v2)
	if name == 'stageRemoveDK' then
		removeLuaSprite('cargo walls');
	
		removeLuaSprite('cargo');
	
		removeLuaSprite('overlay');
		
		removeSpriteShader("boyfriend", "bloom")
	end
end