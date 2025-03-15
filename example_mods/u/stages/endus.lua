
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0
local xx = 530;
local yy = 700;
local xx2 = 1500; --1000 bf
local yy2 = 700; --550 bf
local ofs = 5;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
	luaDebugMode = true
	

		precacheImage('fog_back')
		precacheImage('fog_front')
		precacheImage('fog_mid')
		precacheImage('victorytext')
		precacheImage('victory_pulse')
		precacheImage('characters/charles')
		precacheImage('characters/Ellie_Assets')
		precacheImage('characters/grey')
		precacheImage('characters/HENRY_ASSS')
		precacheImage('characters/impostor')
		precacheImage('characters/impostor3')
		precacheImage('characters/jelqer')
		precacheImage('characters/jelqerNEW')
		precacheImage('characters/jorsawsee')
		precacheImage('characters/maroon')
		precacheImage('characters/meangus')
		precacheImage('characters/pink')
		precacheImage('characters/tuesday')
		precacheImage('characters/warchief')
		precacheImage('characters/white')
		addCharacterToList('impostor3', 'dad'); 
		addCharacterToList('tuesday', 'dad'); 
		addCharacterToList('yellow', 'dad'); 
		addCharacterToList('black', 'dad'); 
	
		makeLuaSprite('spotlights', 'victory_spotlights', 130, 10);
		setProperty('spotlights.visible',true)
		setProperty('spotlights.alpha', 0.4)

		setProperty('blackscreen.visible',false)

		setObjectOrder('boyfriendGroup', 1);
		setObjectOrder('dadGroup', 2);
		setObjectOrder('gfGroup', 3);
		setObjectOrder('spotlights', 4);
end
function onCreatePost()
	initLuaShader("bloom")
	setSpriteShader("spotlights", "bloom")
	setSpriteShader("dad", "bloom")
	setSpriteShader("boyfriend", "bloom")
end
function onEvent(name,v1,v2)
	if name == 'Change Character' then
		setSpriteShader("dad", "bloom")
		setSpriteShader("gf", "bloom")
	end
end
function onStepHit()
	if curStep == 128 then
		makeLuaSprite('front', 'fog_front', -1000, 740);
		setProperty('front.alpha', 0.5)
		setProperty('front.visible',true)

		makeLuaSprite('mid', 'fog_mid', -350, 589);
		setProperty('mid.alpha', 0.2)
		setGraphicSize('mid',2550,300)
		addLuaScript('data/sussus-endus/scripts/victory_pule')
		setProperty('mid.visible',true)
		
		makeAnimatedLuaSprite('victory', 'victorytext', 500, 175);
		addAnimationByPrefix('victory','idle','VICTORY instance 1',24,false);

		makeLuaSprite('spotlights', 'victory_spotlights', 130, 10);
		setProperty('spotlights.visible',true)
		setProperty('spotlights.alpha', 0.4)
	
		setProperty('victory_pulse.antialiasing', true);
		setProperty('victory_pulse.alpha', 1)
		setProperty('victory_pulse.visible',true)
	
		makeLuaSprite('back', 'fog_back', 400, 660);
		setProperty('back.alpha', 0.2)
		setProperty('back.visible',true)
		setProperty('blackscreen.visible',false)

		setObjectOrder('victory', 1);
		setObjectOrder('back', 2);
		setObjectOrder('mid', 3);
		setObjectOrder('boyfriendGroup', 4);
		setObjectOrder('dadGroup', 5);
		setObjectOrder('gfGroup', 6);
		setObjectOrder('spotlights', 7);
		setObjectOrder('victory_pulse', 8);
		setObjectOrder('front', 9);
		
		initLuaShader("bloom")
		setSpriteShader("spotlights", "bloom")
		setSpriteShader("dad", "bloom")
		setSpriteShader("boyfriend", "bloom")
		
		xx = 1000;
		yy = 550;
		xx2 = 1000; --1000 bf
		yy2 = 550; --550 bf
		ofs = 30;
		setProperty('defaultCamZoom',0.7)
	end
	if curStep == 1286 then
		setObjectOrder('victory', 1);
		setObjectOrder('back', 2);
		setObjectOrder('mid', 3);
		setObjectOrder('boyfriendGroup', 4);
		setObjectOrder('dadGroup', 5);
		setObjectOrder('gfGroup', 6);
		setObjectOrder('ellie', 7);
		setObjectOrder('spotlights', 8);
		setObjectOrder('victory_pulse', 9);
		setObjectOrder('front', 10);	
	end
end
function onBeatHit()
	if curBeat % 2 == 0 then
		playAnim('victory','idle',true);
	end
end
function onUpdate()
	if curStep < 128 then
		setProperty('defaultCamZoom',1.3)
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
end