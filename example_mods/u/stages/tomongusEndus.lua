function onStepHit()
	if not lowQuality and curStep == 384 then
	makeLuaSprite('stars', 'stages/tomongus/stars', -310, -160);
	scaleObject('stars', 6.5, 6.5);
	setScrollFactor('stars', 1, 1);
	setProperty('stars.antialiasing', false);
	setObjectOrder('stars', 0);

	makeLuaSprite('weebStreet', 'stages/tomongus/weebStreet', -396, -240);
	scaleObject('weebStreet', 7, 7);
	setScrollFactor('weebStreet', 1, 1);
	setProperty('weebStreet.antialiasing', false);
	setObjectOrder('weebStreet', 1);

	setProperty('gfGroup.antialiasing', true);
	setObjectOrder('gfGroup', 2);

	setScrollFactor('dadGroup', 1, 1);
	setProperty('dadGroup.antialiasing', true);
	setObjectOrder('dadGroup', 3);

	setScrollFactor('boyfriendGroup', 1, 1);
	setProperty('boyfriendGroup.antialiasing', true);
	setObjectOrder('boyfriendGroup', 4);
	
end
end