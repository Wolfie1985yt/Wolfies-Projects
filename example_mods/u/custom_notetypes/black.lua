function opponentNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'black' then
        if noteData == 0 then
			triggerEvent("Play Animation", "singLEFT", "dad")
        elseif noteData == 1 then
			triggerEvent("Play Animation", "singDOWN", "dad")
        elseif noteData == 2 then
			triggerEvent("Play Animation", "singUP", "dad")
        elseif noteData == 3 then
			triggerEvent("Play Animation", "singRIGHT", "dad")
        end
    end
end