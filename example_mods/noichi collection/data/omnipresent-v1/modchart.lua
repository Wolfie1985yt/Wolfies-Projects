function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 1 == 0 and curBeat > 2375 and curBeat < 2823 and not lowQuality then
		triggerEvent('Add Camera Zoom', 0.060, 0.05)
	end
end

function onStepHit()
    if curStep == 11544 then
    		makeLuaSprite('BlackBg','',0 - (getProperty('defaultCamZoom') * 100),0 - (getProperty('defaultCamZoom') * 100))
   		setScrollFactor('BlackBg',0,0)
    		scaleObject('BlackBg',1 + (getProperty('defaultCamZoom') * 100),1 + (getProperty('defaultCamZoom') * 100))
    		makeGraphic('BlackBg',screenWidth,screenHeight,'000000')
    		addLuaSprite('BlackBg')
    		setObjectCamera('BlackBg', 'hud');
    end
    if curStep == 11552 then
	removeLuaSprite('BlackBg');
    end
    if curStep == 12064 then
    		makeLuaSprite('BlackBg2','',0 - (getProperty('defaultCamZoom') * 100),0 - (getProperty('defaultCamZoom') * 100))
   		setScrollFactor('BlackBg2',0,0)
    		scaleObject('BlackBg2',1 + (getProperty('defaultCamZoom') * 100),1 + (getProperty('defaultCamZoom') * 100))
    		makeGraphic('BlackBg2',screenWidth,screenHeight,'000000')
    		addLuaSprite('BlackBg2')
		setProperty('BlackBg2.alpha',0)
    		setObjectCamera('BlackBg2', 'other');
		doTweenAlpha('tween','BlackBg2',1,2,'circIn')
    end
    if curStep == 12144 then
	removeLuaSprite('BlackBg');
	doTweenAlpha('tween','BlackBg2',0,1.5,'circIn')
    end
    if curStep == 12127 then
	cancelTween(bfColorTween);
	cancelTween(dadColorTween)
    end
    if curStep == 12952 then
    		makeLuaSprite('BlackBg2','',0 - (getProperty('defaultCamZoom') * 100),0 - (getProperty('defaultCamZoom') * 100))
   		setScrollFactor('BlackBg2',0,0)
    		scaleObject('BlackBg2',1 + (getProperty('defaultCamZoom') * 100),1 + (getProperty('defaultCamZoom') * 100))
    		makeGraphic('BlackBg2',screenWidth,screenHeight,'000000')
    		addLuaSprite('BlackBg2')
    		setObjectCamera('BlackBg2', 'other');
    end
end
	