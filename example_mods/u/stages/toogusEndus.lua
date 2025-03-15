function onStepHit()
	if not lowQuality and curStep == 128 then
    makeLuaSprite('BackBg','mirabg',-1750, 30)
    scaleObject('BackBg',1.06,1.06)
    setScrollFactor('BackBg',1,1)

    makeLuaSprite('BackFg','mirafg',-1750, 30)
    scaleObject('BackFg',1.06,1.06)
    setScrollFactor('BackFg',1,1)
	
    makeLuaSprite('Table','table_bg',-1750, 30)
    scaleObject('Table',1.06,1.06)
    setScrollFactor('Table',1,1)

	makeAnimatedLuaSprite('Bfvent', 'mira/bf_mira_vent', 0, 150);	
	addAnimationByPrefix('Bfvent','idle','bf vent',24,false);
	objectPlayAnimation('Bfvent','idle',true);
	setProperty('Bfvent.visible', false)
	
		addLuaSprite('BackBg')
		addLuaSprite('BackFg')	
		addLuaSprite('Bfvent')
		addLuaSprite('Table')
	end
end