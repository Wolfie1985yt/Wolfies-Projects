function onEvent(name, value1, value2)
	if name == 'bgchange exe' then
        	setProperty('exeBgsky.visible', true)

        	setProperty('exeBgground.visible', true)

        	setProperty('exeBgExeAnimatedBG_Assets.visible', true)

        	setProperty('exeBgTailsCorpse.visible', true)
   
		setProperty('defaultCamZoom', '0.75')

        	triggerEvent('Change Character', 'bf', 'bf-encorefakerexe')
        	triggerEvent('Change Character', 'dad', 'exe')

	end
end