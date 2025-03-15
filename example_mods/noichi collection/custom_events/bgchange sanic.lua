function onEvent(name, value1, value2)
	if name == 'bgchange sanic' then
		makeLuaSprite('sanicBg','sanicbg',-350,-100)

		addLuaSprite('sanicBg')
     
		setProperty('defaultCamZoom', '1.0')

        	triggerEvent('Change Character', 'bf', 'bf-encoresanic')
        	triggerEvent('Change Character', 'dad', 'sanic')

	end
end