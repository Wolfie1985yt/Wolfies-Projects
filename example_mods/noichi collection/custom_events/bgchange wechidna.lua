function onEvent(name, value1, value2)
	if name == 'bgchange wechidna' then
    		makeLuaSprite('TrueWechidnaBG','TrueWechidnaBG',-600,-500)
      		scaleObject('TrueWechidnaBG', 2, 2);

		setProperty('defaultCamZoom', '1')

        	triggerEvent('Change Character', 'dad', 'wechidna_true_form')
        	triggerEvent('Change Character', 'bf', 'bf-requitalOmni')

    		addLuaSprite('TrueWechidnaBG')

	end
end