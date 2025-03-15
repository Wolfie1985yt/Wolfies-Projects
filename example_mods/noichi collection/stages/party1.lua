function onCreate()
    makeLuaSprite('bg', 'backgrounds/party/bg2', -360, -100);
    setScrollFactor('bg', 1.0, 1.0);
    setGraphicSize('bg', getProperty('bg.width') * 0.8)
    addLuaSprite('bg', false);

    makeAnimatedLuaSprite('gang', 'backgrounds/party/gang_bop', -360, -100);
    addAnimationByPrefix('gang', 'idle', 'gang instance 1', 24, false);
    setScrollFactor('gang', 1.0, 1.0);
    setGraphicSize('gang', getProperty('gang.width') * 0.8)
    addLuaSprite('gang', false);

    makeAnimatedLuaSprite('gfBop', 'backgrounds/party/gf_bop', 1100, 180);
    addAnimationByPrefix('gfBop', 'idle', 'gf', 24, false);
    setScrollFactor('gfBop', 1.0, 1.0);
    setGraphicSize('gfBop', getProperty('gfBop.width') * 0.7)
    addLuaSprite('gfBop', false);

    makeLuaSprite('overlay', 'backgrounds/party/overlay', -360, 50);
    setScrollFactor('overlay', 1.1, 1.1);
    setGraphicSize('overlay', getProperty('overlay.width') * 0.8)
    addLuaSprite('overlay', true);
end

function onBeatHit()
    if curBeat % 2 == 0 then
        playAnim('gang', 'idle');
        playAnim('gfBop', 'idle');
    end
end