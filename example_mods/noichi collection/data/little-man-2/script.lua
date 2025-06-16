function onCreate()
	addCharacterToList('scramble', 'dad')
end
function onBeatHit()
	if curBeat == 3288 then
		endSong()
	end
end

--tacos start at beat 3016 and end at beat 3080