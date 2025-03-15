function onStepHit()
if not lowQuality and curStep == 1856 or not lowQuality and curStep == 2336 then

	makeAnimatedLuaSprite('bg', 'defeat', -550, -500);
	addAnimationByPrefix('bg','idle','defeat',24,false);
	setGraphicSize('bg',2500,2000)
	
	makeLuaSprite('redness', 'iluminao omaga', -550, -100);
	setProperty('redness.alpha',0.8)
	setGraphicSize('redness',2500,1400)	
	
		
	makeLuaSprite('bodies1', 'deadBG', -560, 430);
	setGraphicSize('bodies1',2850,500)
		
	makeLuaSprite('bodiesBG', 'lol thing', -750, 0);
	setGraphicSize('bodiesBG',2800,1300)
	
	makeLuaSprite('bodies2', 'deadFG', -700, 700);
	setGraphicSize('bodies2',2850,900)
	setScrollFactor('bodies2', 0.3, 1);

	setObjectOrder('bg',0)
	setObjectOrder('bodiesBG',1)
	setObjectOrder('bodies1',2)
	setObjectOrder('boyfriendGroup',3)
	setObjectOrder('dadGroup',4)
	setObjectOrder('bodies2',11115)
	setObjectOrder('redness',11116)
end
end

function onBeatHit()
	if curBeat % 4 == 0 and not lowQuality then	
		objectPlayAnimation('bg','idle',true);
	end
end