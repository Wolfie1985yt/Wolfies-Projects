function onStepHit()
	if not lowQuality and curStep == 112 or not lowQuality and curStep == 2112 or not lowQuality and curStep == 2304 or not lowQuality and curStep == 2352 then
        setProperty('defaultCamZoom',0.75)

		makeLuaSprite('polus_custom_sky', 'stages/polus/polus_custom_sky', -1084, -693);
		scaleObject('polus_custom_sky', 1.6, 1.6);
		setScrollFactor('polus_custom_sky', 0.6, 0.5);
		setProperty('polus_custom_sky.antialiasing', true);
		setObjectOrder('polus_custom_sky', 0);

		makeLuaSprite('polusrocks', 'stages/polus/polusrocks', -700, -300);
		scaleObject('polusrocks', 1, 1);
		setScrollFactor('polusrocks', 0.6, 0.6);
		setProperty('polusrocks.antialiasing', true);
		setObjectOrder('polusrocks', 1);

		makeLuaSprite('polusHills', 'stages/polus/polusHills', -1050, -181);
		scaleObject('polusHills', 1, 1);
		setScrollFactor('polusHills', 0.9, 0.9);
		setProperty('polusHills.antialiasing', true);
		setObjectOrder('polusHills', 2);

		makeLuaSprite('polus_custom_lab', 'stages/polus/polus_custom_lab', 50, -400);
		scaleObject('polus_custom_lab', 1, 1);
		setScrollFactor('polus_custom_lab', 1, 1);
		setProperty('polus_custom_lab.antialiasing', true);
		setObjectOrder('polus_custom_lab', 3);

		makeLuaSprite('polus_custom_floor', 'stages/polus/polus_custom_floor', -1350, 83);
		scaleObject('polus_custom_floor', 1, 1);
		setScrollFactor('polus_custom_floor', 1, 1);
		setProperty('polus_custom_floor.antialiasing', true);
		setObjectOrder('polus_custom_floor', 4);

		setScrollFactor('gfGroup', 0.95, 0.95);
		setProperty('gfGroup.antialiasing', true);
		setObjectOrder('gfGroup', 5);

		setScrollFactor('dadGroup', 1, 1);
		setProperty('dadGroup.antialiasing', true);
		setObjectOrder('dadGroup', 6);

		makeAnimatedLuaSprite('snow', 'stages/polus/snow', -543, -351);
		scaleObject('snow', 1.6, 1.6);
		addAnimationByPrefix('snow', '', '', 24, true);
		setScrollFactor('snow', 1, 1);
		setProperty('snow.antialiasing', true);
		setObjectOrder('snow', 11);

		setScrollFactor('boyfriendGroup', 1, 1);
		setProperty('boyfriendGroup.antialiasing', true);
		setObjectOrder('boyfriendGroup', 9);
	
		makeAnimatedLuaSprite('boppers_meltdown', 'stages/polus/boppers_meltdown', -1033, 1705);
		scaleObject('boppers_meltdown', 1, 1);
		addAnimationByPrefix('boppers_meltdown', '', '', 24, true);
		setScrollFactor('boppers_meltdown', 1, 1);
		setProperty('boppers_meltdown.antialiasing', true);
	
		setObjectOrder('pet', 10);
	end	
end