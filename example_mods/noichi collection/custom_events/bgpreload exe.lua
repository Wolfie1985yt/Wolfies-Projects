function onEvent(name, value1, value2)
	if name == 'bgpreload exe' then
   	makeLuaSprite('exeBgsky','exeBgsky',-700,-500)
    	setLuaSpriteScrollFactor('exeBgsky',0.5,0.5)
    	scaleObject('exeBgsky',1,1)
    	addLuaSprite('exeBgsky',false)
        setProperty('exeBgsky.visible', true)

    	makeLuaSprite('exeBgground','exeBgground',-700,-300)
    	setLuaSpriteScrollFactor('exeBgground',0.6,0.6)
    	scaleObject('exeBgground',1,1)
    	addLuaSprite('exeBgground',false)
        setProperty('exeBgground.visible', true)

    	makeAnimatedLuaSprite('exeBgExeAnimatedBG_Assets', 'exeBgExeAnimatedBG_Assets', -1100, -750)
    	addAnimationByPrefix('exeBgExeAnimatedBG_Assets','bgthing','ExeBGAnim',24,true)
    	addLuaSprite('exeBgExeAnimatedBG_Assets',false)
    	objectPlayAnimation('exeBgExeAnimatedBG_Assets','bgthing',true)
    	scaleObject('exeBgExeAnimatedBG_Assets', 1.3, 1.3)
       	setProperty('exeBgExeAnimatedBG_Assets.visible', true)

    	makeLuaSprite('exeBgTailsCorpse','exeBgTailsCorpse',400,400)
    	setLuaSpriteScrollFactor('exeBgTailsCorpse',1,1)
    	scaleObject('exeBgTailsCorpse',1,1)
    	addLuaSprite('exeBgTailsCorpse',false)
        setProperty('exeBgTailsCorpse.visible', true)

		makeLuaSprite('StarvedLight','starvedlight',-400,-300)
		scaleObject('StarvedLight',1.45,1.45)
		addLuaSprite('StarvedLight')

		makeLuaSprite('StarvedCity','starvedcity',-380,-300)
		scaleObject('StarvedCity',1.45,1.45)
		addLuaSprite('StarvedCity')
		setScrollFactor('StarvedCity',0.7,0.7)

		makeLuaSprite('StarvedTowers','starvedtowers',-380,-300)
		scaleObject('StarvedTowers',1.45,1.45)
		addLuaSprite('StarvedTowers')
		setScrollFactor('StarvedTowers',0.8,0.8)

		makeLuaSprite('StarvedWall','starvedstage',-400,-300)
		scaleObject('StarvedWall',1.45,1.45)
		addLuaSprite('StarvedWall')

		makeLuaSprite('StarvedSonicDead','starvedsonicisfuckingdead',120,50)
		scaleObject('StarvedSonicDead',0.65,0.65)
		addLuaSprite('StarvedSonicDead')

	end
end

--bf preload
--fleetway longer slow and speed up X
--beast wechidna X
--fatal error X
--lord x
--preload lord x when sonic.exe laughs X
--sunky X
--hog preload before start X
--beast preload before start X
--beast hog preload before start X
--end faker sonic
--end sonic.exe