function onEvent(name, value1, value2)
	if name == 'bgchange chaotix' then
      		makeAnimatedLuaSprite('bg', 'chaotixx', -300,-800);
      		scaleObject('bg', 6.0, 6.5);
      		setProperty('bg.antialiasing', false);

      		addLuaSprite('bg', false);
      		addAnimationByPrefix('bg', 'idle', 'chaotix gf',34, true)
     
		setProperty('defaultCamZoom', '1.5')

        	triggerEvent('Change Character', 'bf', 'chaotix_bfOmni')
        	triggerEvent('Change Character', 'dad', 'chaotix')

	end
end