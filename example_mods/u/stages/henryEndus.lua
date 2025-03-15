function onStepHit()
	if not lowQuality and curStep == 1088 or not lowQuality and curStep == 2240 then
		makeLuaSprite('bg','stagehenry',-1585,-310)
		addLuaSprite('bg',false)
	end
end