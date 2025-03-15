function onEvent(name, value1, value2)
	if name == 'bgchange X-terion' then
		makeLuaSprite('xterionsky', 'xterionsky', -500, -400);
		setLuaSpriteScrollFactor('xterionsky', 0.6, 0.6);
		scaleObject('xterionsky', 1.1, 1.1);
	
		makeLuaSprite('xterionfloor', 'xterionfloor', -700, 700);
		setLuaSpriteScrollFactor('xterionfloor', 1, 1);
		scaleObject('xterionfloor', 1.5, 1.5);

		addLuaSprite('xterionsky', false);
		addLuaSprite('xterionfloor', false);

		setProperty('defaultCamZoom', '0.75')

        	triggerEvent('Change Character', 'dad', 'X-terion')
        	triggerEvent('Change Character', 'bf', 'sega_saturn_bf')

	end
end