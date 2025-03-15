function onEvent(name, value1, value2)
	if name == 'bgchange scorched' then
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
		addLuaSprite('deadrocks', true);

		setProperty('defaultCamZoom', '0.65')

        	triggerEvent('Change Character', 'bf', 'bf-hog')
        	triggerEvent('Change Character', 'dad', 'scorched')

	end
end