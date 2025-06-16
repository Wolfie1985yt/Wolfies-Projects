function onBeatHit()
	if curBeat % 1 == 0 then
		triggerEvent('Add Camera Zoom', 0.025,0.025)
	end
end
function onStepHit()
	if curStep == 392 then
		close()
	end
end