-- Script by Shadow Mario
-- Customized for Simplicity by Kevin Kuntz
function onCreate()
	makeAnimationList();
	makeOffsets();

	makeLuaSprite('frontpot','mira/front pot',-1465,650)	
	makeAnimatedLuaSprite('bluecrew', 'mira/crew', defaultOpponentX - 830, defaultOpponentY - 0);
	addAnimationByPrefix('bluecrew', 'idle', 'blue', 24, false);

	addLuaSprite('bluecrew', true);
	addLuaSprite('frontpot',true)		

	playAnimation('bluecrew', 0, true);
end

animationsList = {}
holdTimers = {bluecrew = -1.0};
noteDatas = {bluecrew = 0};
function makeAnimationList()
	animationsList[0] = 'idle';
end

offsetsbluecrew = {};
function makeOffsets()
	offsetsbluecrew[0] = {x = 0, y = 0}; --idle
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Special_Sing' then
		if not isSustainNote then
			noteDatas.bluecrew = direction;
		end	
	characterToPlay = 'bluecrew'
	animToPlay = noteDatas.bluecrew;
	holdTimers.bluecrew = 0;
			
	playAnimation(characterToPlay, animToPlay, true);
	end
end

function onUpdate(elapsed)
	holdCap = stepCrochet * 0.004;
	if holdTimers.bluecrew >= 0 then
		holdTimers.bluecrew = holdTimers.bluecrew + elapsed;
		if holdTimers.bluecrew >= holdCap then
			playAnimation('bluecrew', 0, false);
			holdTimers.bluecrew = -1;
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
		if holdTimers.bluecrew < 0 then
			playAnimation('bluecrew', 0, false);
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
	if character == 'bluecrew' then
		objectPlayAnimation('bluecrew', animName, forced); -- this part is easily broke if you use objectPlayAnim (I have no idea why its like this)
		setProperty('bluecrew.offset.x', offsetsbluecrew[animId].x);
		setProperty('bluecrew.offset.y', offsetsbluecrew[animId].y);
	end
end