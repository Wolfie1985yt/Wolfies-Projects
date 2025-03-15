function onCreate()
    makeLuaSprite('bg', 'bgs/facetious/FacetiousBG', -100, -100)
    setScrollFactor('bg', 1, 1);
	setGraphicSize('bg', screenWidth, screenHeight);
    addLuaSprite('bg', false)
	scaleObject('bg',1.2,1.2);
end
function onUpdate(elapsed)
	triggerEvent('Camera Follow Pos', 1000, 500);
	setProperty('dad.alpha',0);
	setProperty('boyfriend.alpha',0);
	setProperty('gf.alpha',0);
	setProperty('healthBar.alpha',0);
	setProperty('iconP1.alpha',0);
	setProperty('iconP2.alpha',0);
end