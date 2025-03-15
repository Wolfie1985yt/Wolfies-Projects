-- Script by Shadow Mario
-- Customized for Simplicity by Kevin Kuntz
function onCreate()
	makeAnimationList();
	makeOffsets();
	
	makeAnimatedLuaSprite('vines', 'mira/vines', defaultOpponentX + -1330, defaultOpponentY - 1220);
	addAnimationByPrefix('vines', 'idle', 'green', 24, true);

	playAnimation('vines', 0, false);
end

animationsList = {}
holdTimers = {vines = -1.0};
noteDatas = {vines = 0};
function makeAnimationList()
	animationsList[0] = 'idle';
end

offsetsvines = {};
function makeOffsets()
	offsetsvines[0] = {x = 0, y = 0}; --idle
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Special_Sing' then
		if not isSustainNote then
			noteDatas.vines = direction;
		end	
	characterToPlay = 'vines'
	animToPlay = noteDatas.vines;
	holdTimers.vines = 0;
			
	playAnimation(characterToPlay, animToPlay, true);
	end
end

function onUpdate(elapsed)
	holdCap = stepCrochet * 0.004;
	if holdTimers.vines >= 0 then
		holdTimers.vines = holdTimers.vines + elapsed;
		if holdTimers.vines >= holdCap then
			playAnimation('vines', 0, false);
			holdTimers.vines = -1;
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
	if counter % 2 == 0 then
		if holdTimers.vines < 0 then
			playAnimation('vines', 0, false);
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
	if character == 'vines' then
		objectPlayAnimation('vines', animName, forced); -- this part is easily broke if you use objectPlayAnim (I have no idea why its like this)
		setProperty('vines.offset.x', offsetsvines[animId].x);
		setProperty('vines.offset.y', offsetsvines[animId].y);
	end
end