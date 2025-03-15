function onCreate()
	makeLuaSprite('bg', 'bgs/tails-doll/bg', -700, -100);
	scaleObject('bg', 1.1, 1.1);
	setProperty('bg.antialiasing', true);
	addLuaSprite('bg', false);
end