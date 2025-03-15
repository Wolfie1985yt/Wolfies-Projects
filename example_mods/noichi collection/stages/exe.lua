function onCreate()
	makeLuaSprite('Glitch', 'Glitch', -600, -300);
	setScrollFactor('Glitch', 0.9, 0.9);

	makeLuaSprite('Xeno bg', 'Xeno bg', -600, -300);
	setScrollFactor('Xeno bg', 0.9, 0.9);
	
	makeLuaSprite('TreesFront', 'TreesFront', -600, -300);
	setScrollFactor('TreesFront', 0.9, 0.9);

    makeAnimatedLuaSprite('static', 'shadow', 0, 0)
    addAnimationByPrefix('static', 'flash', 'shadow gangnam style', 24, true)

	addLuaSprite('Glitch', false);
	addLuaSprite('Xeno bg', false);
	addLuaSprite('TreesFront', true);
	addLuaSprite('static', true);


	setProperty('defaultCamZoom',0.1)

 --For performance reasons, close this script once the park is fully loaded, as this script won't be used anymore after loading the park
end
function onUpdate()
	setProperty('defaultCamZoom',0.1)
end