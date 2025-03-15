function onUpdate()
	if not lowQuality and curStep == 768 then

	makeLuaSprite('cargo walls', 'airship/cargowall', 250, 50);
	scaleLuaSprite('cargo walls', 1., 1.);
	addLuaSprite('cargo walls', false);

	makeLuaSprite('cargo', 'airship/cargo', 50, 50);
	scaleLuaSprite('cargo', 1., 1.);
	addLuaSprite('cargo', false);

	makeLuaSprite('overlay', 'overlay ass dk', 50, 50);
	scaleLuaSprite('overlay', 1., 1.);
	addLuaSprite('overlay', true);
	
	if buildTarget == 'windows' then
		initLuaShader("bloom")
		setSpriteShader("gf", "bloom")
		setSpriteShader("dad", "bloom")
		setSpriteShader("boyfriend", "bloom")
	end
	
	end
end