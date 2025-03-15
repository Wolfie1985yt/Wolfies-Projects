function onEvent(name, value1, value2)
	if name == 'badundo' then
		removeLuaSprite('whiteBg')
        	triggerEvent('Change Character', 'bf', 'bf-encoreEXE2')
        	triggerEvent('Change Character', 'dad', 'sonicexe2')
	end
end