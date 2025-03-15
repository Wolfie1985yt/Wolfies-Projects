function onSpawnNote(i)
    for i = 0,getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i,'noteType') == 'BF Glitch' then
            setPropertyFromGroup('unspawnNotes', i,'texture','GlitchNotes')
            setPropertyFromGroup('unspawnNotes', i,'ignoreNote',true)
        end
    end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'BF Glitch' then
		health = getProperty('health')
		setProperty('health', health- 0.3);
		playSound('glitchhit', 2);
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'BF Glitch' then
	    setProperty('health', getProperty('health') +0.0475);
		--addMisses(-1);
		cameraShake('camGame', 0.01, 0.2);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if loopsLeft >= 1 then
		setProperty('health', getProperty('health')-0.1);
	end
end

function onGameOver()
	close()
end