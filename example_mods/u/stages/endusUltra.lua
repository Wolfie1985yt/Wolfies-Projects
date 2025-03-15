function onCreate()
	precacheImage('noteSplashes/noteSplashes')
	if not lowQuality then
	precacheImage('victory_pulse')
	precacheImage('victorytext')
	precacheImage('airship/newAirship/backDlowFloor')
	precacheImage('airship/newAirship/backSkyyellow')
	precacheImage('airship/newAirship/cloudYellow')
	precacheImage('airship/newAirship/DlowFloor')
	precacheImage('airship/newAirship/fartingSky')
	precacheImage('airship/newAirship/glowYellow') --idk if its used but just in case
	precacheImage('airship/newAirship/window')
	precacheImage('airship/newAirship/yellow cloud 3')
	precacheImage('airship/newAirship/yellow could 2') --not a spelling mistake thats the actual asset name
	precacheImage('stages/tomongus/stars')
	precacheImage('stages/tomongus/weebStreet')
	precacheImage('stages/tuesday/space')
	precacheImage('stages/tuesday/tuesday')
	precacheImage('airship/cargowall')
	precacheImage('airship/boxes')
	precacheImage('airship/cargofloor')
	precacheImage('airship/cargo')
	precacheImage('overlay ass ok')
	precacheImage('stagehenry')
	precacheImage('blackscreen')
	precacheImage('table_bg')
	precacheImage('mirafg')
	precacheImage('mirabg')
	precacheImage('stages/polus/polus_custom_floor')
	precacheImage('stages/polus/polus_custom_sky')
	precacheImage('stages/polus/polusHills')
	precacheImage('stages/polus/polusrocks')
	precacheImage('stages/polus/snow')
	precacheImage('stages/tomongus/stars')
	precacheImage('stages/tomongus/weebStreet')
	precacheImage('stages/tuesday/space')
	precacheImage('stages/tuesday/tuesday')
	precacheImage('mira/bg sky')
	precacheImage('mira/bigcloud')
	precacheImage('mira/cloud 1')
	precacheImage('mira/cloud 2')
	precacheImage('mira/cloud 3')
	precacheImage('mira/cloud 4')
	precacheImage('mira/cloud fathest')
	precacheImage('mira/cloud front')
	precacheImage('mira/front pot')
	precacheImage('mira/glasses')
	precacheImage('mira/lmao')
	precacheImage('mira/vines')
	precacheImage('mira/what is this')
	precacheImage('mira/pretender/bg sky')
	precacheImage('mira/pretender/bigcloud')
	precacheImage('mira/pretender/cloud 1')
	precacheImage('mira/pretender/cloud 2')
	precacheImage('mira/pretender/cloud 3')
	precacheImage('mira/pretender/cloud 4')
	precacheImage('mira/pretender/cloud fathest')
	precacheImage('mira/pretender/cloud front')
	precacheImage('mira/pretender/front plant')
	precacheImage('mira/pretender/front pot')
	precacheImage('mira/pretender/green')
	precacheImage('mira/pretender/ground')
	precacheImage('mira/pretender/knocked over plant 2')
	precacheImage('mira/pretender/lightingpretender')
	precacheImage('characters/Ellie_Assets')
	
	addCharacterToList('Crewmate', 'dad'); 
	addCharacterToList('impostor3', 'dad'); 
	addCharacterToList('whitegreen', 'dad'); 
	addCharacterToList('whitebf', 'bf'); 
	addCharacterToList('tomongus', 'dad'); 
	addCharacterToList('tuesday', 'dad'); 
	addCharacterToList('yellow', 'dad'); 
	addCharacterToList('white', 'dad'); 
	addCharacterToList('whitedk', 'dad'); 
	addCharacterToList('blackdk', 'gf'); 
	addCharacterToList('black', 'dad'); 
	addCharacterToList('grey', 'dad'); 
	addCharacterToList('maroon', 'dad'); 
	addCharacterToList('pink', 'dad'); 
	addCharacterToList('henry', 'dad'); 
	addCharacterToList('charles', 'dad'); 
	
	addLuaScript('data/sussus-endus/cam/camshit')
	addLuaScript('data/sussus-endus/characters/elliescript')
	addLuaScript('data/sussus-endus/characters/green2script')
	addLuaScript('data/sussus-endus/characters/greenscript')
	addLuaScript('data/sussus-endus/characters/henryscript')
	addLuaScript('data/sussus-endus/characters/jorsawseescript')
	addLuaScript('data/sussus-endus/characters/jorsawseescript2')
	addLuaScript('data/sussus-endus/characters/meangusScript')
	addLuaScript('data/sussus-endus/characters/pinkscript')
	addLuaScript('data/sussus-endus/characters/redscript')
	addLuaScript('data/sussus-endus/characters/redscript2')
	addLuaScript('data/sussus-endus/characters/warchiefscript')
	addLuaScript('data/sussus-endus/characters/whitescript')
	addLuaScript('data/sussus-endus/characters/yellowscript')
	addLuaScript('data/sussus-endus/scripts/Stage Change Manager')

	end
end
function onStartCountdown()
	if buildTarget == 'windows' then
		initLuaShader("bloom")
		setSpriteShader("spotlights", "bloom")
		setSpriteShader("dad", "bloom")
		setSpriteShader("boyfriend", "bloom")
	end
	addLuaScript('data/sussus-endus/cam/startCam')
	triggerEvent('Change Scroll Speed', 2.5, 0.001)
end

function onStepHit()
	if curStep == 128 then
		triggerEvent('Change Scroll Speed', 2.7, 0.001)	
	end
	if curStep == 256 then
		triggerEvent('Change Scroll Speed', 3.3, 0.001)	
	end
	if curStep == 384 then
		triggerEvent('Change Scroll Speed', 2.7, 0.001)	
	end
	if curStep == 512 then
		triggerEvent('Change Scroll Speed', 2.6, 0.001)	
	end
	if curStep == 640 then
		triggerEvent('Change Scroll Speed', 2.5, 0.001)	
	end
	if curStep == 768 then
		triggerEvent('Change Scroll Speed', 3.2, 0.001)	
	end
	if curStep == 896 then
		triggerEvent('Change Scroll Speed', 2.9, 0.001)	
	end
	if curStep == 1088 then
		triggerEvent('Change Scroll Speed', 2.5, 0.001)	
	end
	if curStep == 1158 then
		triggerEvent('Change Scroll Speed', 2.7, 0.001)	
	end
	if curStep == 1216 then
		triggerEvent('Change Scroll Speed', 2.5, 0.001)	
	end
	if curStep == 1286 then
		triggerEvent('Change Scroll Speed', 2.6, 0.001)	
	end
	if curStep == 1344 then
		triggerEvent('Change Scroll Speed', 2.8, 0.001)	
	end
	if curStep == 1584 then
		triggerEvent('Change Scroll Speed', 3.1, 1.5)	
	end
	if curStep == 1600 then
		triggerEvent('Change Scroll Speed', 2.8, 0.001)	
	end
	if curStep == 1728 then
		triggerEvent('Change Scroll Speed', 2.9, 0.001)	
	end
	if curStep == 1856 then
		triggerEvent('Change Scroll Speed', 2.8, 0.001)	
	end
	if curStep == 1968 then
		triggerEvent('Change Scroll Speed', 3.2, 12.5)	
	end
	if curStep == 2096 then
		triggerEvent('Change Scroll Speed', 3.3, 0.001)	
	end
	if curStep == 2112 then
		triggerEvent('Change Scroll Speed', 2.7, 0.001)	
	end
	if curStep == 2144 then
		triggerEvent('Change Scroll Speed', 2.70000000000002, 0.001)	
	end
	if curStep == 2182 then
		triggerEvent('Change Scroll Speed', 2.9, 0.001)	
	end
	if curStep == 2240 then
		triggerEvent('Change Scroll Speed', 2.5, 0.001)	
	end
	if curStep == 2272 then
		triggerEvent('Change Scroll Speed', 2.7, 0.001)	
	end
	if curStep == 2288 then
		triggerEvent('Change Scroll Speed', 2.6, 0.001)	
	end
	if curStep == 2304 or curStep == 2352 then
		triggerEvent('Change Scroll Speed', 2.7, 0.001)	
	end
	if curStep == 2336 then
		triggerEvent('Change Scroll Speed', 2.70000000000002, 0.001)	
	end
	if curStep == 2360 then
		triggerEvent('Change Scroll Speed', 2.7, 0.001)	
	end
	if curStep == 2364 then
		triggerEvent('Change Scroll Speed', 2.9, 0.001)	
	end
	if curStep == 2368 then
		triggerEvent('Change Scroll Speed', 3.2, 0.001)	
	end
	if not lowQuality then
	if curStep == 1024 then
		makeLuaSprite('blackscreen', 'blackscreen', 0,0)
		setGraphicSize('blackscreen', screenWidth, screenHeight)
		addLuaSprite('blackscreen')
		setObjectCamera('blackscreen', 'hud')
		screenCenter('blackscreen')
	end
	if curStep == 1088 then
		setProperty('blackscreen.alpha',0)
	end
	if curStep == 1286 then
		addLuaSprite('ellie',true)
	end
	if curStep == 1344 then
		setProperty('ellie.visible',false)
	end
	if curStep == 2096 then
		addLuaSprite('impostor',true)
		setObjectOrder('impostor',116)
	end
	if curStep == 2100 then
		addLuaSprite('impostor3',true)
		setProperty('impostor.visible',false)
		setObjectOrder('impostor3',117)
	end
	if curStep == 2104 then
		addLuaSprite('yellow',true)
		setProperty('impostor3.visible',false)
		setObjectOrder('yellow',118)
	end
	if curStep == 2108 then
		setProperty('yellow.visible',false)
	end
	if curStep == 2224 then
		setProperty('yellow.visible',true)
		addLuaSprite('yellow',true)
		addLuaSprite('jorsawsee',true)
	end
	if curStep == 2240 then
		setProperty('yellow.visible',false)		
		setProperty('jorsawsee.visible',false)	
	end
	if curStep == 2288 then
		setProperty('ellie.visible',true)
	end
	if curStep == 2304 then
		setProperty('ellie.visible',false)
	end
	if curStep == 2360 then
		addLuaSprite('red',true)
	end
	if curStep == 2364 then
		addLuaSprite('meangus',true)
		addLuaSprite('impostorG',true)
		addLuaSprite('henry',false)
	end
	if curStep == 2368 then
		addLuaSprite('white',true)
		addLuaSprite('meangus',true)
		addLuaSprite('red',true)
		addLuaSprite('impostorG',true)
		addLuaSprite('warchief',false)
		addLuaSprite('henry',false)
		addLuaSprite('jorsawsee2',false)
		addLuaSprite('pink',true)
	end
	end
end