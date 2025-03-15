function onEvent(name, value1, value2)
	if name == 'bgpreload3' then
		makeLuaSprite('dead', 'dead', -900, -350);
		scaleObject('dead', 1.2, 1.2);
		addLuaSprite('dead', false);

		makeLuaSprite('motainsdaead', 'motainsdaead', -850, -50);
		scaleObject('motainsdaead', 1.2, 1.2);
		addLuaSprite('motainsdaead', false);

		makeAnimatedLuaSprite('DEADWaterfalls', 'DEADWaterfalls', -1030, 150);
		addAnimationByPrefix('DEADWaterfalls', 'DEADWaterfalls', 'British', 14, true);
		scaleObject('DEADWaterfalls', 0.9, 0.9);
		addLuaSprite('DEADWaterfalls', false);

		makeAnimatedLuaSprite('DEADHills', 'DEADHills', -500, 150);
		addAnimationByPrefix('DEADHills', 'DEADHills', 'DumbassMF', 14, true);
		scaleObject('DEADHills', 1, 1);
		addLuaSprite('DEADHills', false);

		makeLuaSprite('deadtrees', 'deadtrees', -570, -100);
		scaleObject('deadtrees', 1, 1);
		addLuaSprite('deadtrees', false);
	
		makeLuaSprite('DEADfloor', 'DEADfloor', -800, 700);
		scaleObject('DEADfloor', 1.2, 1.2);
		addLuaSprite('DEADfloor', false);

		makeLuaSprite('deadrocks', 'deadrocks', -680, 575);
		scaleObject('deadrocks', 1, 1);
		
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
			
	end
end