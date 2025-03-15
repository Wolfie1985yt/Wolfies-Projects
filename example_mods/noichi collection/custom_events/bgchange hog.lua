function onEvent(name, value1, value2)
	if name == 'bgchange hog' then
		makeLuaSprite('hogbg', 'hogbg', -900, -350);
		scaleObject('hogbg', 1.2, 1.2);
		addLuaSprite('hogbg', false);

		makeLuaSprite('hogmotains', 'hogmotains', -850, -50);
		scaleObject('hogmotains', 1.2, 1.2);
		addLuaSprite('hogmotains', false);

		makeAnimatedLuaSprite('hogWaterfalls', 'hogWaterfalls', -1030, 150);
		addAnimationByPrefix('hogWaterfalls', 'hogWaterfalls', 'British', 14, true);
		scaleObject('hogWaterfalls', 0.9, 0.9);
		addLuaSprite('hogWaterfalls', false);

		makeAnimatedLuaSprite('hogHillsandHills', 'hogHillsandHills', -500, 150);
		addAnimationByPrefix('hogHillsandHills', 'hogHillsandHills', 'DumbassMF', 14, true);
		scaleObject('hogHillsandHills', 1, 1);
		addLuaSprite('hogHillsandHills', false);

		makeLuaSprite('hogtrees', 'hogtrees', -570, -100);
		scaleObject('hogtrees', 1, 1);
		addLuaSprite('hogtrees', false);
	
		makeLuaSprite('hogfloor', 'hogfloor', -800, 700);
		scaleObject('hogfloor', 1.2, 1.2);
		addLuaSprite('hogfloor', false);

		makeLuaSprite('hogrocks', 'hogrocks', -680, 575);
		scaleObject('hogrocks', 1, 1);
		addLuaSprite('hogrocks', true);

		setProperty('defaultCamZoom', '0.69')

        	triggerEvent('Change Character', 'bf', 'bf-hog')
        	triggerEvent('Change Character', 'dad', 'hog2')

	end
end