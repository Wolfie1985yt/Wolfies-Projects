function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'gf_with_opponent' then --Check if the note on the chart is a Bullet Note
			--setPropertyFromGroup('unspawnNotes', i, 'texture', 'notetexture'); --Change notetexture
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); -- make it so original character doesn't sing these notes

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'gf_with_opponent' then
        if noteData == 0 then
			triggerEvent("Play Animation", "singLEFT", "gf")
			triggerEvent("Play Animation", "singLEFT", "dad")
        elseif noteData == 1 then
			triggerEvent("Play Animation", "singDOWN", "gf")
			triggerEvent("Play Animation", "singDOWN", "dad")
        elseif noteData == 2 then
			triggerEvent("Play Animation", "singUP", "gf")
			triggerEvent("Play Animation", "singUP", "dad")
        elseif noteData == 3 then
			triggerEvent("Play Animation", "singRIGHT", "gf")
			triggerEvent("Play Animation", "singRIGHT", "dad")
        end
    end
end
