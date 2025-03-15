function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'duet' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', '');
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', false);
		end
	end
end
function opponentNoteHit(id,dir,type,sus)
	if type == 'all' then
		characterPlayAnim('gf', getProperty('singAnimations')[math.abs(dir)+1], true)
		setProperty('gf.holdTimer', 0)
	end
end