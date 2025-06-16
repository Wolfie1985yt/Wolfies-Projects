
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  961;
local yy =  602;
local xx2 = 961;
local yy2 = 602;
local ofs = 0;
local followchars = true;
local del = 0;
local del2 = 0;
local autoZoom = false;
function onCreate()
	makeLuaSprite('stage', 'stages/gameshow/stage', 0, 0);
	scaleObject('stage', 6, 6);
	setScrollFactor('stage', 1, 1);
	setProperty('stage.antialiasing', false);
    addLuaSprite('stage',false);

    makeLuaSprite('light1', 'stages/gameshow/screen-lights', 150, 0);
	scaleObject('light1', 3, 3);
	setScrollFactor('light1', 1, 1);
	setProperty('light1.antialiasing', false);
    addLuaSprite('light1',false);

    makeLuaSprite('light2', 'stages/gameshow/screen-lights', 1446, 0);
	scaleObject('light2', 3, 3);
	setScrollFactor('light2', 1, 1);
	setProperty('light2.antialiasing', false);
    setProperty('light2.flipX',true);
    addLuaSprite('light2',false);

    makeLuaSprite('textbox', 'stages/gameshow/textbox', 0, 0);
	setProperty('textbox.antialiasing', false);
    addLuaSprite('textbox',false);
    scaleObject('textbox', 1.52, 1.52);
    setObjectCamera('textbox', 'camOther');
    screenCenter('textbox');
    setProperty('textbox.y', 466)
    setProperty('textbox.visible',false);

	makeAnimatedLuaSprite('lights', 'stages/gameshow/lights-tvtime', 0, 0);
	addAnimationByPrefix('lights', 'test', 'idle', 12, true);
	setProperty('lights.antialiasing', false);
    setObjectCamera('lights', 'camOther');
	scaleObject('lights', 1.52, 1.52)
    screenCenter('lights');
    setProperty('lights.y', 488);
    addLuaSprite('lights', false);
    setProperty('lights.visible',false);

	-- makeLuaSprite('black', '', 0, 0);
	-- makeGraphic('black',1920,1080,'000000');
	-- addLuaSprite('black', false);
	-- setLuaSpriteScrollFactor('black',0,0);
	-- setProperty('black.scale.x',2);
	-- setProperty('black.scale.y',2);
	-- setProperty('black.alpha',0);

    -- makeLuaSprite('its', 'stages/gameshow/tvtime-1', 0, 0);
	-- setProperty('its.antialiasing', false);
    -- addLuaSprite('its',false);
    -- scaleObject('its', 1.52, 1.52);
    -- setObjectCamera('its', 'camOther');
    -- screenCenter('its');
    -- setProperty('its.x', 303)
    -- setProperty('its.y', 532)
    -- scaleObject('lights', 2, 2)
    -- setProperty('its.visible',false);
    
    -- makeLuaSprite('t', 'stages/gameshow/tvtime-2', 0, 0);
	-- setProperty('t.antialiasing', false);
    -- addLuaSprite('t',false);
    -- scaleObject('t', 1.52, 1.52);
    -- setObjectCamera('t', 'camOther');
    -- screenCenter('t');
    -- setProperty('t.x', 523)
    -- setProperty('t.y', 534)
    -- setProperty('t.visible',false);

    -- makeLuaSprite('v', 'stages/gameshow/tvtime-3', 0, 0);
	-- setProperty('v.antialiasing', false);
    -- addLuaSprite('v',false);
    -- scaleObject('v', 1.52, 1.52);
    -- setObjectCamera('v', 'camOther');
    -- screenCenter('v');
    -- setProperty('v.x', 527)
    -- setProperty('v.y', 542)
    -- setProperty('v.visible',false);

    -- makeLuaSprite('time!!!', 'stages/gameshow/tvtime-4', 0, 0);
	-- setProperty('time!!!.antialiasing', false);
    -- addLuaSprite('time!!!',false);
    -- scaleObject('time!!!', 1.52, 1.52);
    -- setObjectCamera('time!!!', 'camOther');
    -- screenCenter('time!!!');
    -- setProperty('time!!!.x', 707)
    -- setProperty('time!!!.y', 522)
    -- setProperty('time!!!.visible',false);

    makeLuaSprite('curatin1', 'stages/gameshow/curatin-long', 1758, 0);
	scaleObject('curatin1', 6, 6);
	setScrollFactor('curatin1', 1, 1);
	setProperty('curatin1.antialiasing', false);
    setProperty('curatin1.flipX',true);
    addLuaSprite('curatin1',true);

    makeLuaSprite('curatin2', 'stages/gameshow/curatin-long', 0, 0);
	scaleObject('curatin2', 6, 6);
	setScrollFactor('curatin2', 1, 1);
	setProperty('curatin2.antialiasing', false);
    addLuaSprite('curatin2',true);
end

function onCreatePost()
    setProperty('iconP1.antialiasing',false);
    setProperty('iconP2.antialiasing',false);
    setProperty('boyfriend.idleSuffix','-alt');
    setProperty('dad.idleSuffix','-comms'); 
    setProperty('healthBar.alpha',0.7);
    setProperty('camHUD.alpha',0);
end
function onStepHit()
    if curStep == 1 then
        setProperty('defaultCamZoom', 0.61);
    elseif curStep == 96 then
        setProperty('textbox.visible',true);
        setProperty('lights.visible',true);
        setProperty('boyfriend.idleSuffix','-pose');
        setProperty('dad.idleSuffix','-pose');
        triggerEvent('Play Animation', 'idle-pose', 'dad');
        triggerEvent('Play Animation', 'idle-pose', 'bf');
    elseif curStep == 128 then
        removeLuaSprite('textbox');
        removeLuaSprite('lights');
        setProperty('boyfriend.idleSuffix','-alt');
        setProperty('dad.idleSuffix','')
        triggerEvent('Play Animation', 'idle', 'dad');
        triggerEvent('Play Animation', 'idle-alt', 'bf');
        doTweenAlpha('camTween2', 'camHUD', 1, 2, 'smootherStepOut');
    elseif curStep == 182 or curStep == 316 then
        setProperty('boyfriend.idleSuffix','');
        triggerEvent('Play Animation', 'idle', 'bf');
    elseif curStep == 256 then
        triggerEvent('Play Animation', 'idle-alt', 'dad');
        triggerEvent('Play Animation', 'idle-alt', 'bf');
        setProperty('boyfriend.idleSuffix','-alt');
        setProperty('dad.idleSuffix','-alt');
    elseif curStep == 384 then
        doTweenZoom('camTween', 'camGame', 1.4, 13, 'smootherStepInOut');
        doTweenAlpha('camTween2', 'camHUD', 0, 10, 'smootherStepInOut');
    elseif curStep == 394 then
        setProperty('defaultCamZoom', 1.4);
    end
end
function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if autoZoom == true then
                setProperty('defaultCamZoom',0.9);
            end
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
            if autoZoom == true then
                setProperty('defaultCamZoom',1);
            end
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