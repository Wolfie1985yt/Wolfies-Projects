function onCreate()
	luaDebugMode = true
end
function onEvent(eventName, value1, value2)
if getPropertyFromClass('ClientPrefs', 'shaders') == false and eventName == 'Lights on' or buildTarget == 'android' and eventName == 'Lights on' then
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
		triggerEvent("Change Character", "0", "bf")
        cameraFlash('game','000000',0.35)
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
	end
	if eventName=='Lights on' and charNum == 1 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
		triggerEvent("Change Character", "0", "bf")
	elseif eventName=='Lights on' and charNum == 2 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
		triggerEvent("Change Character", "0", "bf")
	elseif eventName=='Lights on' and charNum == 3 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 4 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 5 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 6 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 7 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 8 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 9 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 10 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 11 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 12 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 13 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 14 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 15 then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 16 and difficultyName == 'mania' then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        removeSpriteShader('boyfriend')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
	elseif eventName=='Lights on' and charNum == 16 and difficultyName == 'hard' then
        cameraFlash('game','000000',0.35)
        removeSpriteShader('iconP2')
        removeSpriteShader('iconP1')
        runHaxeCode([[
            game.reloadHealthBarColors();
        ]])
        setProperty('BackBg.visible',true)
        setProperty('BackFg.visible',true)
        setProperty('Table.visible',true)
        setProperty('gf.visible',true)
        setProperty('pet.visible',true)
		addLuaScript('loadscripts/notefadecontrol')
		addLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "impostor3")
		triggerEvent("Change Character", "0", "bf")
		end
	end
function onCreate()
	initSaveData('impostorPort')
	charNum = getDataFromSave('impostorPort', 'charNum')
end