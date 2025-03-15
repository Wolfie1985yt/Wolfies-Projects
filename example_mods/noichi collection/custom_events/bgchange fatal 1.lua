function onEvent(name, value1, value2)
	if name == 'bgchange fatal 1' then
      		makeAnimatedLuaSprite('domain2', 'domain2', -300,-800);
      		scaleObject('domain2', 5.7,5.7);
      		setProperty('domain2.antialiasing', false);
      		addLuaSprite('domain2', false);
      		addAnimationByPrefix('domain2', 'idle', 'idle',14, true)
     
		setProperty('defaultCamZoom', '0.7')

        	triggerEvent('Change Character', 'bf', 'bf-fatalOmni')
        	triggerEvent('Change Character', 'dad', 'fatal-sonicOmni')

	end
end