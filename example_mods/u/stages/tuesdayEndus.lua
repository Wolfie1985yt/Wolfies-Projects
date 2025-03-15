function onStepHit()
	if not lowQuality and curStep == 512 then
	makeLuaSprite('space', 'stages/tuesday/space', -402, -130);
	scaleObject('space', 1, 1);
	setScrollFactor('space', 1, 1);
	setProperty('space.antialiasing', true);
	setObjectOrder('space', 0);

	makeLuaSprite('tuesday', 'stages/tuesday/tuesday', -422, -167);
	scaleObject('tuesday', 1, 1);
	setScrollFactor('tuesday', 1, 1);
	setProperty('tuesday.antialiasing', true);
	setObjectOrder('tuesday', 1);

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