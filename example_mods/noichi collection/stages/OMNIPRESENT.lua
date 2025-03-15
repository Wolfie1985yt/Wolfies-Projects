function onCreate()
    	makeLuaSprite('TailsBG','TailsBG',-400,-250)
    	scaleObject('TailsBG',1.4,1.4)
    	addLuaSprite('TailsBG')

    	makeLuaSprite('BlackvignetteCycles','black_vignette',0,0)
    	setObjectCamera('BlackvignetteCycles','hud')
    	addLuaSprite('BlackvignetteCycles',true)
        setProperty('BlackvignetteCycles.visible', false)

    	makeLuaSprite('ChamberSky','ChamberWall',-600,-200)
    	addAnimationByPrefix('ChamberSky','broked','Wall Broken instance',0,true)
    	addLuaSprite('ChamberSky')
        setProperty('ChamberSky.visible', false)

    	makeAnimatedLuaSprite('ChamberFloor','ChamberFloor',-3000,1000)
    	addAnimationByPrefix('ChamberFloor','yellow','floor yellow',0,true)
    	scaleObject('ChamberFloor',1.2,1.2)
    	addLuaSprite('ChamberFloor')
        setProperty('ChamberFloor.visible', false)

    	makeAnimatedLuaSprite('ChamberRock','FleetwayBGshit',-2600,-1300)
    	addAnimationByPrefix('ChamberRock','yellow','BGyellow',24,true)
    	addLuaSprite('ChamberRock')
        setProperty('ChamberRock.visible', false)

        makeAnimatedLuaSprite('ChamberPebles','pebles',750,1250)
        addAnimationByPrefix('ChamberPebles','normal','pebles instance 1',24,true)
        addLuaSprite('ChamberPebles')
        setProperty('ChamberPebles.visible', false)

    	makeAnimatedLuaSprite('ChamberRainEmerald2','Emerald Beam Charged',-200,-400)
    	addAnimationByPrefix('ChamberRainEmerald2','rain','Emerald Beam Charged instance 1',24,true)
    	addLuaSprite('ChamberRainEmerald2')
    	scaleObject('ChamberRainEmerald2',1,0.6)
        setProperty('ChamberRainEmerald2.visible', false)
	
    	makeAnimatedLuaSprite('ChamberMasterEmerald','Emeralds',400,-200)
    	addAnimationByPrefix('ChamberMasterEmerald','fly','TheEmeralds instance',24,true)
    	addLuaSprite('ChamberMasterEmerald')
        setProperty('ChamberMasterEmerald.visible', false)

    	makeAnimatedLuaSprite('Chamber','The Chamber',-200,550)
    	addAnimationByPrefix('Chamber','wowSonic','Chamber Sonic Fall',24,false)
    	addLuaSprite('Chamber')
        setProperty('Chamber.visible', false)

	makeAnimatedLuaSprite('Stardust Bg', 'stardust speedway bg', -1500,-1250);
	setPropertyLuaSprite('Stardust Bg', 'antialiasing', false);
	setLuaSpriteScrollFactor('Stardust Bg', 1.5, 1.5);
	scaleObject('Stardust Bg', 7.0, 7.0);
	addLuaSprite('Stardust Bg', false);
 	addAnimationByPrefix('Stardust Bg', 'idle', 'loop idle', 60, true);
        setProperty('Stardust Bg.visible', false)

	makeAnimatedLuaSprite('plataform', 'plataform', -1500,650);
	scaleObject('plataform', 5.0, 5.0);
	setPropertyLuaSprite('plataform', 'antialiasing', false);
 	addAnimationByPrefix('plataform', 'idle', 'loop idle', 110, true);
	addLuaSprite('plataform', true);
        setProperty('plataform.visible', false)

    	makeLuaSprite('exeBgsky','exeBgsky',-700,-500)
    	setLuaSpriteScrollFactor('exeBgsky',0.5,0.5)
    	scaleObject('exeBgsky',1,1)
    	addLuaSprite('exeBgsky',false)
        setProperty('exeBgsky.visible', false)

    	makeLuaSprite('exeBgground','exeBgground',-700,-300)
    	setLuaSpriteScrollFactor('exeBgground',0.6,0.6)
    	scaleObject('exeBgground',1,1)
    	addLuaSprite('exeBgground',false)
        setProperty('exeBgground.visible', false)

    	makeAnimatedLuaSprite('exeBgExeAnimatedBG_Assets', 'exeBgExeAnimatedBG_Assets', -1100, -750)
    	addAnimationByPrefix('exeBgExeAnimatedBG_Assets','bgthing','ExeBGAnim',24,true)
    	addLuaSprite('exeBgExeAnimatedBG_Assets',false)
    	objectPlayAnimation('exeBgExeAnimatedBG_Assets','bgthing',true)
    	scaleObject('exeBgExeAnimatedBG_Assets', 1.3, 1.3)
       	setProperty('exeBgExeAnimatedBG_Assets.visible', false)

    	makeLuaSprite('exeBgTailsCorpse','exeBgTailsCorpse',400,400)
    	setLuaSpriteScrollFactor('exeBgTailsCorpse',1,1)
    	scaleObject('exeBgTailsCorpse',1,1)
    	addLuaSprite('exeBgTailsCorpse',false)
        setProperty('exeBgTailsCorpse.visible', false)

	close(true); --For performance reasons, close this script once the park is fully loaded, as this script won't be used anymore after loading the park
end