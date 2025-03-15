function onEvent(name, value1, value2)
	if name == 'bgchange ending' then
    		makeLuaSprite('FirstEncoreBG','FirstEncoreBG',-600,-500)
      		scaleObject('FirstEncoreBG', 2, 2);

    		makeLuaSprite('FirstEncoreBG2','FirstEncoreBG2',-600,-500)
      		scaleObject('FirstEncoreBG2', 2, 2);

		setProperty('defaultCamZoom', '0.65')

        	triggerEvent('Change Character', 'dad', 'FakerEXE')
        	triggerEvent('Change Character', 'bf', 'bf-ending')

    		addLuaSprite('FirstEncoreBG')
    		addLuaSprite('FirstEncoreBG2',true)

	end
end