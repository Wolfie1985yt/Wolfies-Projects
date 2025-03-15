function onUpdate()
	setTextString('botplayTxt', 'Wolfie_1985')
	setProperty('botplayTxt.x', 395)
end
function onCreate()
	if songName == 'Every generic sonic.exe song remix' then
		addLuaScript('data/scripts/restoredHUD')
		precacheImage('')
		addLuaScript('customizableFPS')
	end
	if songName == 'bargain' or songName == 'alcoholic' then
		addLuaScript('loadingScreen')
	end
end
function onStepHit()
	if curStep == 12926 and songName == 'omnipresent-v1' then
		close()
	end
end