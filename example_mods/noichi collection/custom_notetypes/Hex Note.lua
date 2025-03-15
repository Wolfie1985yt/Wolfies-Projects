function onCreate()
    for i = 0,getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i,'noteType') == 'Hex Note' then
            setPropertyFromGroup('unspawnNotes', i,'texture','HEXNOTE_assets')
            setPropertyFromGroup('unspawnNotes', i,'ignoreNote',true)
        end
    end
end
function goodNoteHit(id,data,noteType,sustain)
    if noteType == 'Hex Note' then
		setProperty('health',getProperty('health') - 0.25)
    end
end