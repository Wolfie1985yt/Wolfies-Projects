function onEvent(name,v1,v2)
	if name == 'stageRemoveGreen' then
		
		removeLuaSprite('BackBg')
		
		removeLuaSprite('BackFg')	
		
		removeLuaSprite('Bfvent')
		
		removeLuaSprite('Table')
	end
end