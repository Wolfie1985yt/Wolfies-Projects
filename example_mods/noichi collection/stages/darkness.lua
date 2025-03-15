function onCreate()
    if songName == 'triple-trouble' or songName == 'darkness-v1' or songName == 'darkness-v2' then
    makeLuaSprite('TrioGlitch','Phase3/Normal/glitch',-600,-500)
    makeLuaSprite('TrioBG','Phase3/Normal/BackBush',-600,-500)
    scaleObject('TrioBG',1.2,1.2)
    setScrollFactor('TrioBG',0.9,0.9)
    makeLuaSprite('TrioTTTrees','Phase3/Normal/TTTrees',-600,-500)
    setScrollFactor('TrioTTTrees',0.8,0.8)
    scaleObject('TrioTTTrees',1.2,1.2)
    makeLuaSprite('TrioTree','Phase3/Normal/FGTree1',-720,-500)
    setScrollFactor('TrioTree',1.1,1)
    makeLuaSprite('TrioTree2','Phase3/Normal/FGTree2',-400,-500)
    setScrollFactor('TrioTree2',1.1,1)
    makeLuaSprite('TrioGround','Phase3/Normal/TopBushes',-600,-600)
    scaleObject('TrioGround',1.2,1.2)
    makeAnimatedLuaSprite('static', 'Phase3/Phase3Static', 0, 0)
    addAnimationByPrefix('static', 'flash', 'Phase3Static instance 1', 24, false)
    setGraphicSize('static', getProperty('static.width') * 4)
    setProperty('static.alpha', 0.3)
    setProperty('static.visible', false)
    setObjectCamera('static', 'other')
	end

    if songName == 'triple-trouble' or songName == 'Every generic sonic.exe song remix' then
        makeAnimatedLuaSprite('XenoGlitch','Phase3/NewTitleMenuBG',-450,-250)
        scaleObject('XenoGlitch',4.2,4.2)
        setProperty('XenoGlitch.antialiasing',false)
        addAnimationByPrefix('XenoGlitch','WowSky','TitleMenuSSBG',24,true)
        addLuaSprite('XenoGlitch',false)
        setProperty('XenoGlitch.visible',false)

        makeLuaSprite('XenoBackTrees','Phase3/xeno/BackTrees',-600,-500)
        setScrollFactor('XenoBackTrees',0.8,0.8)
        scaleObject('XenoBackTrees',1.2,1.2)
        setProperty('XenoBackTrees.visible',false)
        
        makeLuaSprite('XenoGround','Phase3/xeno/Grass',-600,-600)
        scaleObject('XenoGround',1.2,1.2)
        setProperty('XenoGround.visible',false)


        addLuaSprite('XenoGlitch')
        addLuaSprite('XenoBackTrees')
        addLuaSprite('XenoGround')
		
    end
    addLuaSprite('TrioGlitch')
    addLuaSprite('TrioTTTrees',false)
    addLuaSprite('TrioBG',false)
    addLuaSprite('TrioGround',false)
    addLuaSprite('TrioTree',true)
    addLuaSprite('TrioTree2',true)
    addLuaSprite('static', true)
end

function onCreatePost()
	if songName == 'Every generic sonic.exe song remix' then
       setProperty('defaultCamZoom',0.9)
       setProperty('TrioGlitch.visible',false)
       setProperty('TrioGround.visible',false)
       setProperty('TrioBG.visible',false)
       setProperty('TrioTree.visible',false)
       setProperty('TrioTree2.visible',false)
       setProperty('TrioTTTrees.visible',false)
       setProperty('XenoGlitch.visible',true)
       setProperty('XenoBackTrees.visible',true)
       setProperty('XenoGround.visible',true)
	end
end

function onSongStart()
	setProperty('static.visible', true)
end

function onStepHit()
    if songName == 'triple-trouble' then
        if curStep == 1040 or curStep == 2320 or curStep == 4112 then
            setProperty('defaultCamZoom',0.9)
            setProperty('TrioGlitch.visible',false)
            setProperty('TrioGround.visible',false)
            setProperty('TrioBG.visible',false)
            setProperty('TrioTree.visible',false)
            setProperty('TrioTree2.visible',false)
            setProperty('TrioTTTrees.visible',false)

            setProperty('XenoGlitch.visible',true)
            setProperty('XenoBackTrees.visible',true)
            setProperty('XenoGround.visible',true)
            setProperty('timeBar.color', getColorFromHex('280676')) -- xeno
        end
        if curStep == 1296 or curStep == 2832 then
            setProperty('defaultCamZoom',0.65)
            setProperty('TrioGlitch.visible',true)
            setProperty('TrioGround.visible',true)
            setProperty('TrioBG.visible',true)
            setProperty('TrioTree.visible',true)
            setProperty('TrioTree2.visible',true)
            setProperty('TrioTTTrees.visible',true)

            setProperty('XenoGlitch.visible',false)
            setProperty('XenoBackTrees.visible',false)
            setProperty('XenoGround.visible',false)
        end
        if curStep == 1296 then
            setProperty('timeBar.color', getColorFromHex('671919')) -- knuckles
        end
        if curStep == 2832 then
            setProperty('timeBar.color', getColorFromHex('996600')) -- eggman
        end
        if curStep == 2832 then
            setProperty('XenoGround.flipX',false)
        end
        if curStep == 2320 then
            setProperty('XenoGround.flipX',true)
        end
        if curStep == 4112 then
            removeLuaSprite('TrioGlitch',true)
            removeLuaSprite('TrioBG',true)
            removeLuaSprite('TrioTree',true)
            removeLuaSprite('TrioTree2',true)
            removeLuaSprite('TrioTTTrees',true)
        end
    end
end

function onUpdate(elapsed)

    if getProperty('static.animation.curAnim.finished') and getProperty('static.animation.curAnim.name') == 'flash' then
        setProperty('static.alpha', 0)
    else
        setProperty('static.alpha', 0.7)
    end
end