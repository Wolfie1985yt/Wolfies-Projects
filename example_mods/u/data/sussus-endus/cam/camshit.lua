function onCreate()
	makeLuaSprite('spotlights', 'victory_spotlights', 130, 10);
	setProperty('spotlights.visible',true)
	setProperty('spotlights.alpha', 0.4)
	
	setObjectOrder('boyfriendGroup', 4);
	setObjectOrder('dadGroup', 5);
	setObjectOrder('gfGroup', 6);
	setObjectOrder('spotlights', 7);
		
	if buildTarget == 'windows' then
		initLuaShader("bloom")
		setSpriteShader("spotlights", "bloom")
		setSpriteShader("dad", "bloom")
		setSpriteShader("boyfriend", "bloom")
	end
end
function onUpdate()
	if curStep == 1344 then
		triggerEvent('Change Character', 'gf', 'nogf')
	end
end
function onStepHit()
	if curStep == 112 then
		if buildTarget == 'windows' then
			removeSpriteShader("boyfriend", "bloom")	
			removeSpriteShader("dad", "bloom")	
			removeSpriteShader("spotlights", "bloom")
		end
		removeLuaSprite('spotlights');
		addLuaScript('data/sussus-endus/cam/redCam')
	end
	if curStep == 128 then
		addLuaScript('data/sussus-endus/cam/greenCam')
	end
	if curStep == 384 then
		addLuaScript('data/sussus-endus/cam/tomongusCam')
	end
	if curStep == 512 then
		addLuaScript('data/sussus-endus/cam/tuesdayCam')
	end	
	if curStep == 640 then
		addLuaScript('data/sussus-endus/cam/whiteCam')
	end
	if curStep == 768 then
		addLuaScript('data/sussus-endus/cam/dkCam')
	end
	if curStep == 896 then
		addLuaScript('data/sussus-endus/cam/yellowCam')
		if buildTarget == 'windows' then
			removeSpriteShader("boyfriend", "bloom")
		end
	end
	if curStep == 1050 then
		addLuaScript('data/sussus-endus/cam/henryCam')
	end
	if curStep == 1158 then
		addLuaScript('data/sussus-endus/cam/charlesCam')
	end
	if curStep == 1216 then
		addLuaScript('data/sussus-endus/cam/henryCam2')
	end
	if curStep == 1344 then
		addLuaScript('data/sussus-endus/cam/maroonCam')
	end
	if curStep == 1472 then
		addLuaScript('data/sussus-endus/cam/pinkCam')
		addLuaScript('stages/vines')
	end
	if curStep == 1600 then
		addLuaScript('data/sussus-endus/cam/greyCam')
	end
	if curStep == 1728 then
		addLuaScript('data/sussus-endus/cam/loungeCam')
	end
	if curStep == 1856 then
		addLuaScript('data/sussus-endus/cam/blackCam2')
	end
	if curStep == 2092 then
		addLuaScript('data/sussus-endus/cam/blackCam4')
	end
	if curStep == 2112 then
		addLuaScript('data/sussus-endus/cam/redCam2')
	end
	if curStep == 2182 then
		addLuaScript('data/sussus-endus/cam/loungeCam2')
	end
	if curStep == 2240 then
		addLuaScript('data/sussus-endus/cam/henryCam3')
	end
	if curStep == 2272 then
		addLuaScript('data/sussus-endus/cam/charlesCam2')
	end
	if curStep == 2288 then
		addLuaScript('data/sussus-endus/cam/henryCam4')
	end
	if curStep == 2304 then
		addLuaScript('data/sussus-endus/cam/redCam3')
	end
	if curStep == 2336 then
		addLuaScript('data/sussus-endus/cam/blackCam3')
	end
	if curStep == 2352 then
		addLuaScript('data/sussus-endus/cam/redCam4')
	end
	if curStep == 2360 then
		addLuaScript('data/sussus-endus/cam/redCam4')
	end
	if curStep == 2367 then
		addLuaScript('data/sussus-endus/cam/endusEndCam')
	end
end

--things to fix

--fix camera in tomongus-tuesday part X
--fix gf being visible in maroon section 
--turn off luaDebugMode when finished
--fix lounge not loading in warchief p1 X
--fix cam in bf solo during defeatbg p1 X
--adjust how long solo cam is active X
--fix lag in pink part (if possible) X
--fix opponent position in polus after bf solo X
--remove red from defeatbg after polus X
--fix ellie not singing in ellie p2 X
--add opponent spawns in final X
--fix beggining cam
--redo flashes