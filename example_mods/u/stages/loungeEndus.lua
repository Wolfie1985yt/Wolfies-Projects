function onStepHit()
	if not lowQuality and curStep == 1728 or not lowQuality and curStep == 2182 then
		precacheImage('airship/wtf')
		precacheImage('blackscreen')
		precacheImage('red')
	
		makeLuaSprite('wall', 'airship/lounge', -270, -60);
		addLuaSprite('wall')
		
		makeLuaSprite('black', 'blackscreen', -270, -60);
		addLuaSprite('black', true)
		setProperty('black.alpha', 0)

	end
end