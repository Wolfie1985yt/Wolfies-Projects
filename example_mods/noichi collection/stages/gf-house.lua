function onCreate()
    makeLuaSprite('bg', 'backgrounds/gf-house/bg1', -360, -100);
    setScrollFactor('bg', 1.0, 1.0);
    setGraphicSize('bg', getProperty('bg.width') * 0.75)
    addLuaSprite('bg', false);

    makeLuaSprite('vignette', 'backgrounds/vignette', 0, 0);
    setScrollFactor('vignette', 1.0, 1.0);
    setObjectCamera('vignette', 'camHUD')
 --   setGraphicSize('vignette', getProperty('bg.width') * 0.75)
    addLuaSprite('vignette', false);
end