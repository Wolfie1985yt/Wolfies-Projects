-- Script by Shadow Mario
-- Customized for Simplicity by Kevin Kuntz
function onCreate()
	makeAnimationList();
	makeOffsets();
	
	makeAnimatedLuaSprite('victory_pulse', 'victory_pulse', defaultOpponentX - 700, defaultOpponentY - 400);
	addAnimationByPrefix('victory_pulse', 'idle', 'animatedlight instance ', 40, false);
	setGraphicSize('victory_pulse',20000,5000)
	playAnimation('victory_pulse', 0, false);
	addLuaSprite('victory_pulse',true)
	setObjectOrder('victory_pulse',1000000000)
end

animationsList = {}
holdTimers = {victory_pulse = -1.0};
noteDatas = {victory_pulse = 0};
function makeAnimationList()
	animationsList[0] = 'idle';
end

offsetsvictory_pulse = {};
function makeOffsets()
	offsetsvictory_pulse[0] = {x = 0, y = 0}; --idle
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Special_Sing' then
		if not isSustainNote then
			noteDatas.victory_pulse = direction;
		end	
	characterToPlay = 'victory_pulse'
	animToPlay = noteDatas.victory_pulse;
	holdTimers.victory_pulse = 0;
			
	playAnimation(characterToPlay, animToPlay, true);
	end
end

function onUpdate(elapsed)
	holdCap = stepCrochet * 0.004;
	if holdTimers.victory_pulse >= 0 then
		holdTimers.victory_pulse = holdTimers.victory_pulse + elapsed;
		if holdTimers.victory_pulse >= holdCap then
			playAnimation('victory_pulse', 0, false);
			holdTimers.victory_pulse = -1;
		end
	end
end

function onCountdownTick(counter)
	beatHitDance(counter);
end

function onBeatHit()
	beatHitDance(curBeat);
end

function beatHitDance(counter)
	if counter % 1 == 0 then
		if holdTimers.victory_pulse < 0 then
			playAnimation('victory_pulse', 0, false);
		end
	end
end

function playAnimation(character, animId, forced)
	-- 0 = idle
	-- 1 = singLEFT
	-- 2 = singDOWN
	-- 3 = singUP
	-- 4 = singRIGHT
	animName = animationsList[animId];
	--debugPrint(animName);
	if character == 'victory_pulse' then
		objectPlayAnimation('victory_pulse', animName, forced); -- this part is easily broke if you use objectPlayAnim (I have no idea why its like this)
		setProperty('victory_pulse.offset.x', offsetsvictory_pulse[animId].x);
		setProperty('victory_pulse.offset.y', offsetsvictory_pulse[animId].y);
	end
end