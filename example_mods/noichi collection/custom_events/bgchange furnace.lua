function onEvent(name, value1, value2)
	if name == 'bgchange furnace' then
        	setProperty('Stardust Bg.visible', true)

        	setProperty('plataform.visible', true)

        	triggerEvent('Change Character', 'bf', 'bf-running-sonicOmni')
        	triggerEvent('Change Character', 'dad', 'furnaceOmni')

		setProperty('defaultCamZoom', '0.6')

	end
end