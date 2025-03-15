function onCreate()
	-- background shit
	makeLuaSprite('underwaterstructure', 'underwaterstructure', -100, -100);
	setScrollFactor('underwaterstructure', 0.9, 0.9);

	addLuaSprite('underwaterstructure', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end