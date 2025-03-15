function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'fleetway_death_BF');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'laser_moment');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'chaosgameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');

    	makeLuaSprite('ChamberSky','ChamberWall',-600,-200)
    	addAnimationByPrefix('ChamberSky','broked','Wall Broken instance',0,true)
    	addLuaSprite('ChamberSky')
        setProperty('ChamberSky.visible', true)

    	makeAnimatedLuaSprite('ChamberFloor','ChamberFloor',-3000,1000)
    	addAnimationByPrefix('ChamberFloor','yellow','floor yellow',0,true)
    	scaleObject('ChamberFloor',1.2,1.2)
    	addLuaSprite('ChamberFloor')
        setProperty('ChamberFloor.visible', true)

    	makeAnimatedLuaSprite('ChamberRock','FleetwayBGshit',-2600,-1300)
    	addAnimationByPrefix('ChamberRock','yellow','BGyellow',24,true)
    	addLuaSprite('ChamberRock')
        setProperty('ChamberRock.visible', true)

        makeAnimatedLuaSprite('ChamberPebles','pebles',750,1250)
        addAnimationByPrefix('ChamberPebles','normal','pebles instance 1',24,true)
        addLuaSprite('ChamberPebles')
        setProperty('ChamberPebles.visible', true)

    	makeAnimatedLuaSprite('ChamberRainEmerald2','Emerald Beam Charged',-200,-400)
    	addAnimationByPrefix('ChamberRainEmerald2','rain','Emerald Beam Charged instance 1',24,true)
    	addLuaSprite('ChamberRainEmerald2')
    	scaleObject('ChamberRainEmerald2',1,0.6)
        setProperty('ChamberRainEmerald2.visible', true)
	
    	makeAnimatedLuaSprite('ChamberMasterEmerald','Emeralds',400,-200)
    	addAnimationByPrefix('ChamberMasterEmerald','fly','TheEmeralds instance',24,true)
    	addLuaSprite('ChamberMasterEmerald')
        setProperty('ChamberMasterEmerald.visible', true)

    	makeAnimatedLuaSprite('Chamber','The Chamber',-200,550)
    	addAnimationByPrefix('Chamber','wowSonic','Chamber Sonic Fall',24,false)
    	addLuaSprite('Chamber')
        setProperty('Chamber.visible', true)
end