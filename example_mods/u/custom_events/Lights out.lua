function onEvent(name)
if name == 'Lights out' then
	    cameraFlash('camGame', 'FFFFFF', 0.35);
        setHealthBarColors('000000', '000000');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
		triggerEvent("Change Character", "0", "whitebf")
	end
if getPropertyFromClass('ClientPrefs', 'shaders', true) then
	if name == 'Lights out' and charNum == 1 then
	    cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
		triggerEvent("Change Character", "0", "whitebf")
	elseif name == 'Lights out' and charNum == 2 then
	    cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
		triggerEvent("Change Character", "0", "whitebf")
	elseif name == 'Lights out' and charNum == 3 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 4 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 5 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 6 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 7 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 8 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 9 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 10 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 11 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 12 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 13 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 14 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 15 then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 16 and difficultyName == 'mania' then
        cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
            setSpriteShader('boyfriend', 'BWShader');
            setShaderFloat('boyfriend', 'lowerBound', 0.01);
            setShaderFloat('boyfriend', 'upperBound', 0.12);
            setShaderBool('boyfriend', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
	elseif name == 'Lights out' and charNum == 16 and difficultyName == 'hard' then
	    cameraFlash('camGame', 'FFFFFF', 0.35);

        setSpriteShader('iconP1', 'BWShader');
        setShaderFloat('iconP1', 'lowerBound', 0.01);
        setShaderFloat('iconP1', 'upperBound', 0.12);
        setShaderBool('iconP1', 'invert', true);

        setSpriteShader('iconP2', 'BWShader');
        setShaderFloat('iconP2', 'lowerBound', 0.01);
        setShaderFloat('iconP2', 'upperBound', 0.12);
        setShaderBool('iconP2', 'invert', true);
        setHealthBarColors('000000', 'FFFFFF');
        setProperty('BackBg.visible',false);
        setProperty('BackFg.visible',false);
        setProperty('Table.visible',false);
        setProperty('gf.visible',false);
        setProperty('pet.visible',false);
		removeLuaScript('loadscripts/notefadecontrol')
		removeLuaScript('loadscripts/doubleNoteFade')
		triggerEvent("Change Character", "1", "whitegreen")
		triggerEvent("Change Character", "0", "whitebf")
		end
	end
end
function onCreate()
	addCharacterToList('whitegreen', 'dad');
	addCharacterToList('whitebf', 'bf');
	initSaveData('impostorPort')
	charNum = getDataFromSave('impostorPort', 'charNum')
end