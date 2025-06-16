local seenDaEnd = false
function onCreate()

addLuaScript('dialogue')

end
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
	speak(count+1)
end

function onSkipDialogue(count)
	stopSound('sound')
	stopSound('sound1')
	stopSound('sound2')
	stopSound('sound3')
	stopSound('sound4') 
	stopSound('sound5')
	stopSound('sound6')
	stopSound('sound7')
end

function speak(shit)
	stopSound('sound')
	stopSound('sound1')
	stopSound('sound2')
	stopSound('sound3')
	stopSound('sound4') 
	stopSound('sound5')
	stopSound('sound6')
	stopSound('sound7')
	playSound('SONG1DIALOGUE/' ..shit,1,'sound')
	playSound('SONG1DIALOGUE/' .. shit,1,'sound1')
	playSound('SONG1DIALOGUE/' .. shit,1,'sound2')
	playSound('SONG1DIALOGUE/' .. shit,1,'sound3')
	playSound('SONG1DIALOGUE/' .. shit,1,'sound4') 
	playSound('SONG1DIALOGUE/' .. shit,1,'sound5')
	playSound('SONG1DIALOGUE/' .. shit,1,'sound6')
	playSound('SONG1DIALOGUE/' .. shit,1,'sound7')
end



function onEvent(n,v1,v2)

	if n == 'startDia' then
		
		speak(1)
	end

end