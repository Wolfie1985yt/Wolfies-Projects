function onStepHit()
	if not lowQuality and curStep == 1600 then
	makeLuaSprite('stagebg','airship/graybg',0,0)
	makeLuaSprite('deadfg','airship/grayfg',0,0)
	makeLuaSprite('fog','airship/graymultiply',0,0)		
	
	makeAnimationList();
	makeOffsets();
	
	makeAnimationList();
	makeOffsets();
	
	makeAnimatedLuaSprite('glowything', 'airship/grayglowy', defaultOpponentX + 1630, defaultOpponentY + 240);
	addAnimationByPrefix('glowything', 'idle', 'jar??', 24, true);
	playAnimation('glowything', 0, false);
	
	addLuaSprite('stagebg',false)	
	addLuaSprite('deadfg',true)
	addLuaSprite('fog',true)
	addLuaSprite('glowything', false);	
end
end

animationsList = {}
holdTimers = {black = -1.0}, {glowything = -1.0};
noteDatas = {black = 0}, {glowything = 0};
function makeAnimationList()
	animationsList[0] = 'idle';
end

offsetsblack = {};
offsetsglowything = {};
function makeOffsets()
	offsetsblack[0] = {x = 0, y = 0}; --idle
	offsetsglowything[0] = {x = 0, y = 0}; --idle
end

function onCountdownTick(counter)
	beatHitDance(counter);
end

function onBeatHit()
	beatHitDance(curBeat);
end

function beatHitDance(counter)
	if counter % 2 == 0 then
		if holdTimers.black < 0 then
			playAnimation('black', 0, false);
		end
		if holdTimers.glowything < 0 then
			playAnimation('glowything', 0, false);
		end
	end
end

function playAnimation(character, animId, forced)
	-- 0 = idle
	animName = animationsList[animId];
	--debugPrint(animName);
	if character == 'black' then
		objectPlayAnimation('black', animName, forced); -- this part is easily broke if you use objectPlayAnim (I have no idea why its like this)
		setProperty('black.offset.x', offsetsblack[animId].x);
		setProperty('black.offset.y', offsetsblack[animId].y);
	end
	if character == 'glowything' then
		objectPlayAnimation('glowything', animName, forced); -- this part is easily broke if you use objectPlayAnim (I have no idea why its like this)
		setProperty('glowything.offset.x', offsetsglowything[animId].x);
		setProperty('glowything.offset.y', offsetsglowything[animId].y);
	end
end