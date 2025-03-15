function onStepHit()
	if not lowQuality and curStep == 640 or not lowQuality and curStep == 896 then
	
	makeLuaSprite('sky', 'airship/newAirship/fartingSky', -1090, -570);
	addLuaSprite('sky', false);

	makeLuaSprite('skybg', 'airship/newAirship/backSkyyellow', -880, 285);
	setLuaSpriteScrollFactor('skybg', 0.5, 0.5);
	addLuaSprite('skybg', false);	

	makeLuaSprite('cloud2', 'airship/newAirship/yellow could 2', -520, 290);
	setLuaSpriteScrollFactor('cloud2', 0.6, 0.6);
	addLuaSprite('cloud2', false);
	
	makeLuaSprite('cloud3', 'airship/newAirship/yellow cloud 3', 1840, 390);
	setLuaSpriteScrollFactor('cloud2', 0.6, 0.6);
	addLuaSprite('cloud3', false);	
	
	makeLuaSprite('cloud1', 'airship/newAirship/cloudYellow 1', -1200, 300);
	setLuaSpriteScrollFactor('cloud1', 0.8, 0.8);
	addLuaSprite('cloud1', false);
	
	makeLuaSprite('glass', 'airship/newAirship/window', -1200, -1000);
	setGraphicSize('glass',4500,2000)
	addLuaSprite('glass', false);


	makeLuaSprite('backdlowfloor', 'airship/newAirship/backDlowFloor', -190, 420);
	setLuaSpriteScrollFactor('backdlowfloor', 1.0, 1.0);
	addLuaSprite('backdlowfloor', false);
	
	makeLuaSprite('dlowfloor', 'airship/newAirship/DlowFloor', -2000, 450);
	setLuaSpriteScrollFactor('dlowfloor', 1.0, 1.0);
	addLuaSprite('dlowfloor', false);
	end
end