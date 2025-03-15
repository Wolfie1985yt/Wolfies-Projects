-- Event notes hooks
function onCreate()
	makeAnimatedLuaSprite('susStatic', 'Phase3Static', -500, -300)
	addAnimationByIndices('susStatic', 'e', 'Phase3Static instance 1', '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38')
	scaleObject('susStatic', 4.8, 4.8)
	setObjectCamera('susStatic', 'hud')
	precacheImage('susStatic')
end

function onEvent(name, value1, value2)
	if name == 'trans rights' and not lowQuality then
		addLuaSprite('susStatic', false)
		objectPlayAnimation('susStatic', 'e', true)
		runTimer('delay', 1.61)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'delay'  and not lowQuality then
		removeLuaSprite('susStatic', false)
	end
end