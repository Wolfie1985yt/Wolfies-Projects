function onBeatHit()
	if curBeat >= 3016 and curBeat <= 3080 then
		makeLuaSprite(curBeat, 'stages/room/tacolol',getRandomFloat(0, 1000), 0)
		setObjectCamera(curBeat, 'other')
		addLuaSprite(curBeat, true)
		if curBeat + 1 then
			doTweenAngle(curStep, curBeat, getRandomInt(1, 360), 0.0001, 'expoInOut')
			doTweenAngle(elapsed, curBeat, getRandomInt(1,360), 4, 'linear')
			doTweenY(curBeat, curBeat, 800, 2, 'linear')
		end
	end
end
--3016, 3080