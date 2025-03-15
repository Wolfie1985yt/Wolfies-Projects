function onEvent(name, value1, value2)
	if name == 'bgchange majin' then
    		makeLuaSprite('endlessSky','sonicFUNsky',-360,0)
    		setProperty('endlessSky.antialiasing',false)
    		scaleObject('endlessSky',0.85,0.85)
    		addLuaSprite('endlessSky')

        	makeAnimatedLuaSprite('endlessTreeBack','Majin Boppers Back',200,-190)
        	addAnimationByPrefix('endlessTreeBack','tree','MajinBop2 instance 1',24,false)
        	addLuaSprite('endlessTreeBack')

    		makeLuaSprite('endlessBG','Bush 1',0,600)
    		addLuaSprite('endlessBG')

    		makeLuaSprite('endlessBG2','Bush2',0,400)
    		addLuaSprite('endlessBG2')

    		makeAnimatedLuaSprite('endlessTreeFront2','Majin Boppers Front',-145,-190)
    		addAnimationByPrefix('endlessTreeFront2','tree','MajinBop1 instance 1',24,false)
    		addLuaSprite('endlessTreeFront2')

    		makeAnimatedLuaSprite('endlessTreeFront','Majin Boppers Front',650,-200)
    		addAnimationByPrefix('endlessTreeFront','tree','MajinBop1 instance 1',24,false)
    		addLuaSprite('endlessTreeFront')


    		makeLuaSprite('endlessGround','floor BG',-360,690)
    		addLuaSprite('endlessGround')

        	makeAnimatedLuaSprite('endlessSonic','majin FG2',-300,800)
        	addAnimationByPrefix('endlessSonic','idle','majin front bopper2',24,false)
        	addLuaSprite('endlessSonic',true)
        	setScrollFactor('endlessSonic',1.1,1.1)

        	makeAnimatedLuaSprite('endlessSonic2','majin FG1',1000,800)
        	addAnimationByPrefix('endlessSonic2','idle','majin front bopper1',24,false)
        	addLuaSprite('endlessSonic2',true)
        	setScrollFactor('endlessSonic2',1.1,1.1)

		setProperty('defaultCamZoom', '0.9')

        	triggerEvent('Change Character', 'bf', 'endless_bfOmni')
        	triggerEvent('Change Character', 'dad', 'majin_new')
    end
end

function onBeatHit()
    objectPlayAnimation('endlessTreeBack','tree',true)
    objectPlayAnimation('endlessTreeFront','tree',true)
    objectPlayAnimation('endlessTreeFront2','tree',true)
    objectPlayAnimation('endlessSonic','idle',true)
    objectPlayAnimation('endlessSonic2','idle',true)
end