function onCreate()
	setProperty('cpuControlled', true)
end
function onUpdate()
	if curStep >= 12927 and curStep <= 12951 then
		setTextString('botplayTxt', '')
	end
	if curStep == 12952 then
		setProperty('cpuControlled',false)
	end
end