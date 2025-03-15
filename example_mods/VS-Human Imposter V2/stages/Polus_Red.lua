local xx = -50; 
local yy = 1380; 
local xx2 = 250; 
local yy2 = 1440;
local ofs = 20;
local followchars = true;

function onCreate()
	addCharacterToList('BF_Dead', 'boyfriend')
	addCharacterToList('BF_GhostDeath', 'boyfriend')

	makeLuaSprite('sky','Polus/Red/polus_custom_sky', -1500, -250)
	setScrollFactor('sky', 0.5, 0.5);
	scaleObject('sky', 2, 2);
    addLuaSprite('sky')

	makeLuaSprite('bgrocks','Polus/Red/polusrocks', -1000, 350)
	setScrollFactor('bgrocks', 0.5, 0.5);
	addLuaSprite('bgrocks')
	
	makeLuaSprite('Hills','Polus/Red/polusHills', -1600, 1050)
	addLuaSprite('Hills')
	
	makeLuaSprite('bgbuilding','Polus/Red/polus_custom_lab', -500, 750)
	addLuaSprite('bgbuilding')
	
	makeLuaSprite('floor','Polus/Red/polus_custom_floor', -1850, 1250)
	addLuaSprite('floor')
	
	if songName == 'Sabotage' or songName == "Meltdown" then
		makeAnimatedLuaSprite('DedSpeakers', 'Polus/Red/speakerlonely', -300, 1300)
		addAnimationByPrefix('DedSpeakers', 'Idle', 'speakers', 24, false)
		addLuaSprite('DedSpeakers')
	end
	
	if songName == "Meltdown" then
		setPropertyFromClass('GameOverSubstate', 'characterName', 'BF_GhostDeath')
	
		makeLuaSprite('BF_Corpse','Polus/Red/bfdead', -30, 1620)
		addLuaSprite('BF_Corpse')
		
		makeAnimatedLuaSprite('Crowd', 'Polus/Red/gangsta', -1650, 1280)
		addAnimationByPrefix('Crowd', 'Idle', 'gangsta', 24, false)
		scaleObject('Crowd', 1.1, 1.1);
		addLuaSprite('Crowd', true)
		
		setProperty('skipCountdown', true)
		makeLuaSprite('BlackScreen', '', 0, 0)
		makeGraphic('BlackScreen', 1300, 750, '000000')
		setObjectCamera('BlackScreen','hud')
		addLuaSprite('BlackScreen', true)
		
		setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
		setProperty('healthBar.alpha', 0)
		setProperty('healthBarBG.alpha', 0)
		setProperty('scoreTxt.alpha', 0)
	end
	
	makeAnimatedLuaSprite('snow','Polus/Red/snow', -1500, 500)
	addAnimationByPrefix('snow', 'loop', 'cum', 24, true)
	scaleObject('snow', 2.25, 2.25);
	setProperty('snow.alpha', 0.7)
	addLuaSprite('snow', true)
-------------------------------------------------------------------------------------------------------------------------------------------------------------
	makeLuaSprite('RedFlash', '', 0, 0)
	makeGraphic('RedFlash', 1300, 750, 'FF1000')
	setObjectCamera('RedFlash','hud')
	setProperty('RedFlash.alpha', 0.0001)
	addLuaSprite('RedFlash', true)
	
	addCharacterToList('dad', 'Red_Worry')
end

function onCreatePost()
	if songName == 'Sabotage' then
		setProperty('gf.alpha', 0.001)
	end
	
	if songName == 'Meltdown' then
		setProperty('defaultCamZoom', 2)
		xx = 60;
		yy = 1400;
		xx2 = 60;
		yy2 = 1400;
	end
-------------------------------------------------------------------------------------------------------------------------------------------------------------
	triggerEvent('Camera Follow Pos', xx, yy)
	setProperty('scoreTxt.color', getColorFromHex('FF1000'))
end

function onCountdownTick(counter)
	if songName == 'Sabotage' then
		objectPlayAnimation('DedSpeakers', 'Idle', true)
	end
	if songName == 'Meltdown' then
		objectPlayAnimation('DedSpeakers', 'Idle', true)
		objectPlayAnimation('Crowd', 'Idle', true)
	end
end

function flash(flashType, startAlpha, fadeTimer)
	if flashType == "Red" and flashingLights then
		setProperty('RedFlash.alpha', startAlpha)
		doTweenAlpha('FlashBye', 'RedFlash', 0, fadeTimer, 'sineInOut')
		triggerEvent('Add Camera Zoom', 0.03, 0.035)
	end
end

function onSongStart()
	if songName == 'Meltdown' then	
		setObjectCamera('BlackScreen','other')
		doTweenAlpha('BlackScreenAlpha', 'BlackScreen', 0, 15)
		setProperty('defaultCamZoom', 2.5)
		doTweenZoom('camGameClose', 'camGame', 2.5, 0)
		runTimer('ZoomOut', 0.25)
		
		setProperty('iconP1.alpha', 1)
		setProperty('iconP2.alpha', 1)
		setProperty('healthBar.alpha', 1)
		setProperty('healthBarBG.alpha', 1)
		setProperty('scoreTxt.alpha', 1)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'ZoomOut' then
		setProperty('defaultCamZoom', 0.65)
		doTweenZoom('camGameOut', 'camGame', 0.65, 15, 'sineOut')
	end
end

function onTweenCompleted(tag)
end

local playVideo = true;

function onStepHit()
	if songName == 'Sussus Moogus' then
		if curStep == 376 or curStep == 380 or curStep == 1152 or curStep == 1216 or curStep == 1272 or curStep == 1276 then
			flash('Red', 0.35, 0.4)
		end
	end
-------------------------------------------------------------------------------------------------------------------------------------------------------------
	if songName == 'Sabotage' then
		if curStep == 64 or curStep == 96 or curStep == 576 or curStep == 640 or curStep == 704 then
			flash('Red', 0.35, 0.4)
		end
		if curStep == 672 or curStep == 736 then
			flash('Red', 0.175, 0.3)
		end
		
		if curStep == 829 then
			characterPlayAnim('boyfriend', 'hey', true)
			setProperty('boyfriend.specialAnim', true)
		end
		-----------------------------------------------------------------------------------------------------------------------------------------
		if curStep == 814 then --815
			setProperty('defaultCamZoom', 0.9)
			xx = 60;
			yy = 1100;
			xx2 = 60;
			yy2 = 1100;
			doTweenAlpha('gfAlpha', 'gf', 1, 0.25)
		end
		if curStep == 828 then
			setProperty('defaultCamZoom', 0.65)
			xx = -50;
			yy = 1380;
			xx2 = 250;
			yy2 = 1480
		end
	end
-------------------------------------------------------------------------------------------------------------------------------------------------------------
	if songName == 'Meltdown' then
		if curStep == 128 then
			xx = -50;
			yy = 1380;
			xx2 = 250;
			yy2 = 1480
		end
		
		--Use Source instead!
		-- if curStep == 1152 and playVideo then 
			-- startVideo('meltdown');
			-- playVideo = false;
		-- end
		if curStep == 1156 then
			setProperty('camHUD.alpha', 0)
			setProperty('camGame.alpha', 0)
			setProperty('camOther.alpha', 0)
		end
	end
end

function onBeatHit()
	if songName == 'Sussus Moogus' then
		if ((curBeat > 96 and curBeat < 160) or (curBeat > 320 and curBeat < 384)) and curBeat % 2 == 0 then 
			flash('Red', 0.25, 0.4)
		end
	end
-------------------------------------------------------------------------------------------------------------------------------------------------------------
	if songName == 'Sabotage' then
		objectPlayAnimation('DedSpeakers', 'Idle', true)
		-----------------------------------------------------------------------------------------------------------------------------------------
		if ((curBeat >= 16 and curBeat <= 128) or (curBeat > 208 and curBeat <= 368)) and curBeat % 8 == 0 then 
			flash('Red', 0.35, 0.4)
		end
	end
-------------------------------------------------------------------------------------------------------------------------------------------------------------	
	if songName == 'Meltdown' then
		objectPlayAnimation('DedSpeakers', 'Idle', true)
		if curBeat % 2 == 0 then
			objectPlayAnimation('Crowd', 'Idle', true)
		end
		
		if ((curBeat >= 32 and curBeat <= 124) or (curBeat >= 192 and curBeat <= 252)) and curBeat % 4 == 0 then 
			flash('Red', 0.35, 0.4)
		end
		if ((curBeat >= 0 and curBeat <= 24) or (curBeat >= 128 and curBeat <= 184) or (curBeat >= 256 and curBeat <= 284)) and curBeat % 8 == 0 then 
			flash('Red', 0.35, 0.4)
		end
	end
end

function onUpdatePost(elapsed)
	if songName == 'Sussus Moogus' or songName == 'Sabotage' then
		if getProperty('health') == 2 and getProperty('winningAltAnim') == false and getProperty('boyfriend.animation.curAnim.name') == 'idle' and boyfriendName == 'bf' then
			setProperty('winningAltAnim', true)
			triggerEvent('Alt Idle Animation', 'bf', '-alt')
		elseif getProperty('health') < 2 and getProperty('winningAltAnim') == true and getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' and boyfriendName == 'bf' then
			setProperty('winningAltAnim', false)
			triggerEvent('Alt Idle Animation', 'bf', '')
		end
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if getProperty('health') == 2 and getProperty('winningAltAnim') == true then
		setProperty('winningAltAnim', false)
		triggerEvent('Alt Idle Animation', 'bf', '')
	end
end

function onUpdate(elapsed)
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
			end
			if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
			end
        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-beatbox' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-beatbox' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' or getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' or getProperty('boyfriend.animation.curAnim.name') == 'singUP-beatbox' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-beatbox' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' or getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' or getProperty('boyfriend.animation.curAnim.name') == 'idle-beatbox' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
			end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end