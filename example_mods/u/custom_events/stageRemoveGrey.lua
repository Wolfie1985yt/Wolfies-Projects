function onEvent(name,v1,v2)
	if name == 'stageRemoveGrey' then
	
		removeLuaSprite('stagebg')	
		
		removeLuaSprite('deadfg')
		
		removeLuaSprite('fog')
		
		removeLuaSprite('glowything');	
	
	end
end