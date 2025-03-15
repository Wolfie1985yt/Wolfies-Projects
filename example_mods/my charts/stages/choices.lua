sprite = 'airship/fgPlatform'
size = 4608
startX = -1200
startY = 470
duration = 1.8
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 700;
local yy = -1000;
local xx2 = 1334.05;
local yy2 = 200; --"-200"
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	if not lowQuality then
	
	makeLuaSprite(sprite .. '1', sprite, startX, startY)
	makeLuaSprite(sprite .. '2', sprite, startX + size, startY)
	
	makeLuaSprite(sprite .. '1speed', sprite, startX, startY)
	makeLuaSprite(sprite .. '2speed', sprite, startX + size, startY)

	makeAnimatedLuaSprite('legs', 'characters/blacklegs', -575, 470);
	addAnimationByPrefix('legs','idle','legs',24,true);
	objectPlayAnimation('legs','idle',false);
	setGraphicSize('legs',630,450)	
	
	makeAnimatedLuaSprite('black', 'characters/blackrun', -675, 170);
	addAnimationByPrefix('black','idle','BLACK IDLE',24,true);
	objectPlayAnimation('black','idle',false);

	makeLuaSprite('front', 'airship/frontClouds', -4000, 250)
	makeLuaSprite('front2', 'airship/frontClouds', 4006, 250)
	makeLuaSprite('sky', 'airship/sky',-3000, -2250)
	makeLuaSprite('airship', 'airship/airship',3880, -1250)
	makeLuaSprite('middle', 'airship/backClouds',4006, -320)
	makeLuaSprite('back', 'airship/farthestClouds',4756, -320)
	makeLuaSprite('back3', 'airship/farthestClouds',-2106, -320)
	makeLuaSprite('sLines', 'airship/speedlines', -5200, -300)
	makeLuaSprite('sLines2', 'airship/speedlines', -200, -300)	
	makeLuaSprite('sLines3', 'airship/speedlines', -5200, -800)
	makeLuaSprite('sLines4', 'airship/speedlines', -200, -800)
	makeLuaSprite('cloud', 'airship/bigCloud', 4000, -1000)
	
	makeAnimatedLuaSprite('propellor', 'airship/airshipFan', 3903, -200);
	addAnimationByPrefix('propellor','idle','ala avion instance 1',24,true);
	objectPlayAnimation('propellor','idle',true);
	
	makeAnimatedLuaSprite('spinner1', 'airship/floating_platform', -13, 110);
	addAnimationByPrefix('spinner1','idle','floating copy',24,true);
	objectPlayAnimation('spinner1','idle',true);
	
	makeAnimatedLuaSprite('spinner2', 'airship/floating_platform', 1183, 110);
	addAnimationByPrefix('spinner2','idle','floating copy',24,true);
	objectPlayAnimation('spinner2','idle',true);

	setProperty('back.visible',false)
	
	setGraphicSize('sky',8000,10000)	
	
	setProperty('airship/fgPlatform1speed.alpha', 0)
	setProperty('airship/fgPlatform2speed.alpha', 0)
	scrollA()
	scrollA2()
	
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);  

	end
end

function scrollA()
	doTweenX(sprite .. '1move',sprite .. '1', startX - size, duration)
	doTweenX(sprite .. '2move',sprite .. '2', startX, duration)
end

function scrollA2()
	doTweenX(sprite .. '1moveSpeed',sprite .. '1speed', startX - size, 2)
	doTweenX(sprite .. '2moveSpeed',sprite .. '2speed', startX, 2)
end

function onCreatePost()
	if not lowQuality then
		doTweenX('sLinesxtween', 'sLines', 4700,7.7, linear)
		doTweenX('sLines3xtween', 'sLines3', 4700,7.7, linear)
		runTimer('restart3', 2.5)
		setScrollFactor('sLines', 1, 1);
		setScrollFactor('sLines3', 1, 1);
		runTimer('restart4', .5)
		setScrollFactor('sLines2', 1, 1);
		setScrollFactor('sLines4', 1, 1);
		doTweenX('sLines2xtween', 'sLines2', 4700,7.7, linear)
		doTweenX('sLines4xtween', 'sLines4', 4700,7.7, linear)
		setProperty('sLines.alpha',0.3)
		setProperty('sLines2.alpha',0.3)
		setProperty('sLines3.alpha',0.3)
		setProperty('sLines4.alpha',0.3)
		doTweenX('cloudxtween', 'cloud', 4700,7.7, linear)
		runTimer('restart2', 1.5)
		setScrollFactor('cloud', 1, 1);
	end
end

function onStartCountdown()
	if not lowQuality then
	doTweenX('front3xtween', 'front', -4000,.1, linear)
	doTweenX('middle2xtween', 'middle', -4000,.1, linear)
	doTweenX('back3xtween', 'back', -4000,.1, linear)
	doTweenX('back69xtween', 'back3', -9000,216, linear)
end
end

function onStepHit()
	if not lowQuality then
	if curStep == 2 then
		setProperty('back.visible',false)
	end
	if curStep == 632 then
		setProperty('scream.visible',true)
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);  
	end
	if curStep == 432 then
		doTweenX('shipxtween', 'airship', -480,16, 'Linear')
		doTweenX('wingxtween', 'propellor', -503,16, 'Linear')
	end
	if curStep == 512 then
		setProperty('defaultCamZoom', 0.45)
	end
	if curStep == 56 then
		setProperty('defaultCamZoom', 0.65)
		yy = -200
	end
	end
end
function onTweenCompleted(tag)
	if not lowQuality then
	if tag == (sprite .. '2move') then
		scrollB()
	end
	if tag == (sprite .. '2move2') then
		scrollA()
	end
	
	if tag == (sprite .. '2moveSpeed') then
		scrollB2()
	end
	if tag == (sprite .. '2move2Speed') then
		scrollA2()
	end
	if tag == 'front3xtween' then --when front1 makes it to middle
		makeLuaSprite('front2', 'airship/frontClouds', 4006, 250)
		makeLuaSprite('front', 'airship/frontClouds', -4000, 250)
		doTweenX('front6xtween', 'front', -9000,15.8, linear)
		doTweenX('front4xtween', 'front2', -4000,25, linear)
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);  
	end
	if tag == 'front4xtween' then --when front2 makes it to middle
		makeLuaSprite('front', 'airship/frontClouds', 4006, 250) --middle == -4000
		makeLuaSprite('front2', 'airship/frontClouds', -4000, 250) --middle == -4000
		doTweenX('front3xtween', 'front', -4000,25, linear)
		doTweenX('front5xtween', 'front2', -9000,15.8, linear)	
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);  		
	end
	if tag == 'middle2xtween' then --when front1 makes it to middle
		makeLuaSprite('middle', 'airship/backClouds', -210, -120)
		doTweenX('middle3xtween', 'middle', -2000,15, linear)
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);  
	end
	if tag == 'middle3xtween' then --when front1 makes it to middle
		makeLuaSprite('middle2', 'airship/backClouds',2456, -120)
		doTweenX('middle8xtween', 'middle', -9000,23, linear)
		doTweenX('middle4xtween', 'middle2', -2000,15, linear)
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);  
	end
	if tag == 'middle4xtween' then --when front2 makes it to middle --middle == -4000
		makeLuaSprite('middle', 'airship/backClouds',2456, -120)
		doTweenX('middle3xtween', 'middle', -2000,15, linear)
		doTweenX('middle8xtween', 'middle2', -9000,23, linear)
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);  
	end
	if tag == 'back2xtween' then --when front1 makes it to middle
		makeLuaSprite('back2', 'airship/farthestClouds',-256, -310)
		doTweenX('back8xtween', 'back', -9000,37, linear)
		doTweenX('back3xtween', 'back2', -2000,98, linear)
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);  
	end
	if tag == 'back3xtween' then --when front1 makes it to middle
		makeLuaSprite('back2', 'airship/farthestClouds',2256, -310)
		doTweenX('back8xtween', 'back', -9000,70, linear)
		doTweenX('back4xtween', 'back2', -2000,127, linear)
		setProperty('back.visible',true)
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);  
	end
	if tag == 'back4xtween' then --when front2 makes it to middle --middle == -4000
		makeLuaSprite('back', 'airship/farthestClouds',2256, -320)
		doTweenX('back3xtween', 'back', -2000,70, linear)
		doTweenX('back8xtween', 'back2', -9000,127, linear)
		setProperty('back.visible',true)
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);  
	end
	end
end

function scrollB()
	doTweenX(sprite .. '1move2',sprite .. '1', startX, 0.001)
	doTweenX(sprite .. '2move2',sprite .. '2', startX + size, 0.001)
end

function scrollB2()
	doTweenX(sprite .. '1move2Speed',sprite .. '1speed', startX, 0.001)
	doTweenX(sprite .. '2move2Speed',sprite .. '2speed', startX + size, 0.001)
end

function onTimerCompleted(tag, loops, loopsleft)
	if not lowQuality then
	if tag == 'restart2' then
		makeLuaSprite('cloud', 'airship/bigCloud', 4000, -770)
		addLuaSprite('cloud',false)
		doTweenX('cloudxtween', 'cloud', -6700,120, linear)
		runTimer('restart2', 123)	
	end
	if tag == 'restart3' then
		makeLuaSprite('sLines', 'airship/speedlines', 1200, -300)
		makeLuaSprite('sLines3', 'airship/speedlines', 1200, -800)
		addLuaSprite('sLines',false)
		addLuaSprite('sLines3',false)
		doTweenX('sLinesxtween', 'sLines', -5700,1.5, linear)
		doTweenX('sLines3xtween', 'sLines3', -5700,1.5, linear)
		runTimer('restart3', 1.1)
		setProperty('sLines.alpha',0.3)
		setProperty('sLines2.alpha',0.3)		
		setProperty('sLines3.alpha',0.3)		
		setProperty('sLines4.alpha',0.3)		
	end
	if tag == 'restart4' then
		makeLuaSprite('sLines2', 'airship/speedlines', 1200, -300)
		makeLuaSprite('sLines4', 'airship/speedlines', 1200, -800)
		addLuaSprite('sLines2',false)
		addLuaSprite('sLines4',false)
		doTweenX('sLines2xtween', 'sLines2', -5700,1.5, linear)
		doTweenX('sLines4xtween', 'sLines4', -5700,1.5, linear)
		runTimer('restart4', 1.1)	
		setProperty('sLines.alpha',0.3)
		setProperty('sLines2.alpha',0.3)
		setProperty('sLines3.alpha',0.3)
		setProperty('sLines4.alpha',0.3)
	end
	end
end
function onUpdate()
        setProperty('defaultCamZoom',0.4)--temporary
	setProperty('gf.visible',false)
	if curBeat > 0 and curBeat < 20 and not lowQuality then
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);  
	end
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
           
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
	if curBeat < 10 then
		setObjectOrder('sky', 0);
		setObjectOrder('back', 1);
		setObjectOrder('back2', 2);
		setObjectOrder('back3', 3);
		setObjectOrder('middle', 4);
		setObjectOrder('middle2', 5);
		setObjectOrder('airship', 6);
		setObjectOrder('propellor', 7);
		setObjectOrder('front', 8);
		setObjectOrder('front2', 9);
		setObjectOrder('cloud', 10);
		setObjectOrder('scream', 11);
		setObjectOrder('spinner3', 12);
		setObjectOrder('warchief', 13);
		setObjectOrder('spinner4', 14);
		setObjectOrder('tomongus', 15);
		setObjectOrder('spinner5', 16);
		setObjectOrder('monotone', 17);
		setObjectOrder('spinner1', 18);
		setObjectOrder('spinner2', 19);
		setObjectOrder('dadGroup', 20);
		setObjectOrder('boyfriendGroup', 21); 
		setObjectOrder('parasiteMungus', 22); 
		setObjectOrder('greenParasite', 23); 
		setObjectOrder(sprite .. '1', 24);
		setObjectOrder(sprite .. '2', 25);
		setObjectOrder(sprite .. '1speed', 26);
		setObjectOrder(sprite .. '2speed', 27);
		setObjectOrder('gfGroup', 28); 
		setObjectOrder('pink', 29); 
		setObjectOrder('lime', 30); 
		setObjectOrder('orange', 31); 
		setObjectOrder('legs', 32); 
		setObjectOrder('black', 33); 
		setObjectOrder('sLines', 34); 
		setObjectOrder('sLines2', 35); 
		setObjectOrder('sLines3', 36); 
		setObjectOrder('sLines4', 37);    
	end

end
