function onCreate()
    makeLuaSprite('bg', 'backgrounds/party/bg3', -360, -100);
    setScrollFactor('bg', 1.0, 1.0);
    setGraphicSize('bg', getProperty('bg.width') * 0.8)
    addLuaSprite('bg', false);

    makeAnimatedLuaSprite('gfBop', 'backgrounds/party/gf_bop', 1100, 180);
    addAnimationByPrefix('gfBop', 'idle', 'gf', 24, false);
    setScrollFactor('gfBop', 1.0, 1.0);
    setGraphicSize('gfBop', getProperty('gfBop.width') * 0.7)
    addLuaSprite('gfBop', false);

    makeLuaSprite('overlay', 'backgrounds/party/overlay', -360, -100);
    setScrollFactor('overlay', 1.1, 1.1);
    setGraphicSize('overlay', getProperty('overlay.width') * 0.8)
    addLuaSprite('overlay', true);

    makeLuaSprite('vignette', 'backgrounds/vignette', 0, 0);
    setScrollFactor('vignette', 1.0, 1.0);
    setObjectCamera('vignette', 'camHUD')
    addLuaSprite('vignette', false);
end

function onBeatHit()
    if curBeat % 2 == 0 then
        playAnim('gfBop', 'idle');
    end
end