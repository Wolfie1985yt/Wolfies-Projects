function onEvent(name, value1, value2)
	if name == 'StageChanger' then
		addLuaScript('stages/'..value1)
	end
	if value2 == true then
		cameraFlash('game','FFFFFF',0.35)
	end
	if value2 == false then
		--do nothing lol
	end
end