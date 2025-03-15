local middleScroll = true
function onUpdatePost()
	for strumLineNotes = 0,3 do
        if getPropertyFromClass('PlayState','isPixelStage') == false  then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','doubleNotes')
			end
		end
	end
	function onUpdate()
    if getPropertyFromClass('PlayState','isPixelStage') == false then
        for notesLength = 0,getProperty('notes.length') do
            if getPropertyFromGroup('notes', notesLength,'mustPress') == false then
                setPropertyFromGroup('notes',notesLength,'texture','doubleNotes')
            end
        end
    end
end