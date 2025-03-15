function onEvent(name, value1, value2)
	if name == 'BAD APPLE MOMENT' and not lowQuality then
		doTweenColor('bfColorTween', 'boyfriend', '000000', 0.00001, 'linear');
		doTweenColor('dadColorTween', 'dad', '000000', 0.00001, 'linear');
    		makeLuaSprite('whiteBg','',0 - (getProperty('defaultCamZoom') * 100),0 - (getProperty('defaultCamZoom') * 100))
   		setScrollFactor('whiteBg',0,0)
    		scaleObject('whiteBg',1 + (getProperty('defaultCamZoom') * 100),1 + (getProperty('defaultCamZoom') * 100))
    		makeGraphic('whiteBg',screenWidth,screenHeight,'FFFFFF')
    		addLuaSprite('whiteBg')
	end
	if name == 'bgchange exe' then
		removeLuaSprite('whiteBg')
	end
end