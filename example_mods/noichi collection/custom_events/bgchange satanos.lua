function onEvent(name, value1, value2)
	if name == 'bgchange satanos' then
    		makeLuaSprite('GFatan','GFatan',-600,-500)
      		scaleObject('GFatan', 2, 2);

		setProperty('defaultCamZoom', '0.8')

        	triggerEvent('Change Character', 'dad', 'satanos')
        	triggerEvent('Change Character', 'bf', 'bf-encore')

    		addLuaSprite('GFatan')

	end
end