function onCreate()
	makeAnimatedLuaSprite('bonnie', 'stages/room/scary', 0, 0)
	addAnimationByPrefix('bonnie', 'scaryjumsare', 'scaryjumsare',24,true)
	setObjectCamera('bonnie', 'other')
	scaleObject('bonnie',0.7,0.7)
end

function onEvent(name, value1, value2)
	if name == 'bonnie' then
		if value1 == 'true' then
			addLuaSprite('bonnie',true)
			objectPlayAnimation('bonnie','scaryjumsare',true)
		elseif value1 == 'false' then
			removeLuaSprite('bonnie',false)
		end
	end
end