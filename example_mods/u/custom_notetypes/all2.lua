function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'all2' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', '');
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', false);
		end
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end

function goodNoteHit(id,dir,type,sus)
	if type == 'Dad Notev2' then
		characterPlayAnim('dad', getProperty('singAnimations')[math.abs(dir)+1], true)
		setProperty('dad.holdTimer', 0)
	end
end

function opponentNoteHit(id,dir,type,sus)
	if type == 'all2' then
		characterPlayAnim('gf', getProperty('singAnimations')[math.abs(dir)+1], true)
		setProperty('gf.holdTimer', 0)
	end
end