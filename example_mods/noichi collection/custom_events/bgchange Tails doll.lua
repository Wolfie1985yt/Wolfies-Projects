function onEvent(name, value1, value2)
	if name == 'bgchange Tails doll' then
    		makeLuaSprite('TailsBG','TailsBG',-400,-250)
    		scaleObject('TailsBG',1.4,1.4)
    		addLuaSprite('TailsBG')

		setProperty('defaultCamZoom', '0.9')

        	triggerEvent('Change Character', 'dad', 'tailsdoll')
        	triggerEvent('Change Character', 'bf', 'bfthreed')

	end
end