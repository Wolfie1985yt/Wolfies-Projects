local xx =  461;
local yy =  302;
local xx2 = 861;
local yy2 = 302;
local ofs = 15;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('bg','stages/hometown/grass',-667,121)
    setScrollFactor('bg',0.95,0.95)
    scaleObject('bg',1.2,1)

    makeLuaSprite('trees','stages/hometown/trees',785,-650)
    setScrollFactor('trees',0.9,0.9)

    makeLuaSprite('trees2','stages/hometown/trees',1300,-650)
    setScrollFactor('trees2',0.9,0.9)
    setProperty('trees2.angle',270)

    makeLuaSprite('town','stages/hometown/buildings',-533,-716)
    setScrollFactor('town',0.95,0.95)

    makeLuaSprite('street','stages/hometown/street',-968,535)
    setScrollFactor('street',1,1)
    
    makeAnimatedLuaSprite('window','stages/hometown/sans',-333,18)
    addAnimationByPrefix('window','bop','sanswindow',24,false)
    setScrollFactor('window',0.95,0.95)

    makeAnimatedLuaSprite('sleepysusan','stages/hometown/susie',120,100)
    addAnimationByPrefix('sleepysusan','bop','susie bop',24,false)
    setScrollFactor('sleepysusan',0.95,0.95)

    makeLuaSprite('fx','stages/hometown/filter',-1400,-844)
    setProperty('fx.alpha',0.55)
    setBlendMode('fx','screen')

    makeLuaSprite('blackass', '', 0, 0);
    setObjectCamera('blackass', 'camOther');
    makeGraphic('blackass', 1920, 1080, '000000');
    addLuaSprite('blackass', false);
    screenCenter('blackass');
    setProperty('blackass.alpha', 1);

    addLuaSprite('bg')
    addLuaSprite('trees2')
    addLuaSprite('trees')
    addLuaSprite('window')
    addLuaSprite('town')
    addLuaSprite('sleepysusan')
    addLuaSprite('street')
    addLuaSprite('fx',true)
end

function onCreatePost()
    setDropColors('boyfriend', 'd38c22', 160, -30, 0, 0, 0, true);
    setDropColors('gf', 'd38c22', 160, -30, 0, 0, 0, true);
    setDropColors('dad', 'd38c22', 160, -30, 0, 0, 0, true);
    setDropColors('trees', 'd38c22', 160, -30, 0, 0, 0, true);
    setDropColors('trees2', 'd38c22', 160, -30, 0, 0, 0, true);
    setDropColors('iconP1', 'd38c22', 30, -30, 0, 0, 0, false);
    setDropColors('iconP2', 'd38c22', 160, -30, 0, 0, 0, true);
    setDropColors('town', 'd38c22', 160, -30, 0, 0, 0, true);
    setDropColors('bg', 'd38c22', 160, -30, 0, 0, 0, true);
    setDropColors('window', '000000', 160, -30, 0, 0, 0, true);
    setDropColors('sleepysusan', 'd38c22', 160, -30, 0, 0, 0, true);
    setDropColors('street', '000000', 160, -30, 0, 0, 0, true);

    setObjectCamera('comboGroup', 'camGame');
    setProperty('camHUD.alpha',0);
end

function onBeatHit()
    if curBeat % 2 == 0 then
        playAnim('sleepysusan', 'bop', true);
        playAnim('window', 'bop', true);
    end
end

function onSongStart()
    playAnim('sleepysusan', 'bop', true);
    playAnim('window', 'bop', true);
    doTweenAlpha('blackTween', 'blackass', 0, 4, 'smootherStepOut');
end

function onCountdownTick(swagCounter)
    if swagCounter % 2 == 0 then    
    playAnim('sleepysusan', 'bop', true);
        playAnim('window', 'bop', true);
    end
end

function onStepHit()
    if curStep == 64 then
        setProperty('defaultCamZoom', 0.7)
        doTweenAlpha('camTween', 'camHUD', 1, 2, 'smootherStepOut');
    end
    if curStep == 320 then
        setProperty('defaultCamZoom', 0.6)
        xx = 621;
        xx2 = xx;
    end
    if curStep == 448 then
        setProperty('defaultCamZoom', 0.7)
        xx = 461;
        xx2 = 861;
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