function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'gfNote' then --Check if the note on the chart is a Bullet Note
			--setPropertyFromGroup('unspawnNotes', i, 'texture', 'notetexture'); --Change notetexture
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			--setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); -- make it so original character doesn't sing these notes
			
		end
	end
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if noteType == 'gfNote' then
		if noteData	== 0 then
			triggerEvent("Play Animation", "singLEFT", "gf")
        elseif noteData == 1 then
			triggerEvent("Play Animation", "singDOWN", "gf")
        elseif noteData == 2 then
			triggerEvent("Play Animation", "singUP", "gf")
        elseif noteData == 3 then
			triggerEvent("Play Animation", "singRIGHT", "gf")
        end
	end
end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if noteType == 'gfNote' then
		if noteData	== 0 then
			triggerEvent("Play Animation", "singLEFT", "gf")
        elseif noteData == 1 then
			triggerEvent("Play Animation", "singDOWN", "gf")
        elseif noteData == 2 then
			triggerEvent("Play Animation", "singUP", "gf")
        elseif noteData == 3 then
			triggerEvent("Play Animation", "singRIGHT", "gf")
        end
	end
end