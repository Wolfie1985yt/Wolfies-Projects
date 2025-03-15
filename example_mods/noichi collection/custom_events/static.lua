function onCreate()
	makeAnimatedLuaSprite('sussyStatic', 'daSTAT', 0, 0)
	addAnimationByPrefix('daSTAT', 'sussyStatic', 'daSTAT', 24, true)
	scaleObject('sussyStatic', 3.2, 3.2);
	setObjectCamera('sussyStatic', 'hud')
	precacheImage('sussyStatic')
	addLuaSprite('sussyStatic', false)
        setProperty('sussyStatic.visible', false)
end

function onEvent(name, value1, value2)
	if name == 'static' and not lowQuality then
        	setProperty('sussyStatic.visible', true)
		objectPlayAnimation('sussyStatic', 'e', true)
		runTimer('delay', 0.08)
		playSound('staticBUZZ', 2.5);
		triggerEvent('Add Camera Zoom', 0.05, 0)
		runTimer('tweenstop',0.40);
		-- bf notespin
		noteTweenAngle('A',6 , 360 , 0.30, "circInOut")
		noteTweenAngle('B',7 , 360 , 0.30, "circInOut")
		noteTweenAngle('C',8 , 360 , 0.30, "circInOut")
		noteTweenAngle('D',9 , 360 , 0.30, "circInOut")
		noteTweenAngle('E',10 , 360 , 0.30, "circInOut")
		noteTweenAngle('F',11 , 360 , 0.30, "circInOut")

		-- oppt notespin
		noteTweenAngle('G',0 , 360 , 0.30, "circInOut")
		noteTweenAngle('H',1 , 360 , 0.30, "circInOut")
		noteTweenAngle('I',2 , 360 , 0.30, "circInOut")
		noteTweenAngle('J',3 , 360 , 0.30, "circInOut")
		noteTweenAngle('K',4 , 360 , 0.30, "circInOut")
		noteTweenAngle('L',5 , 360 , 0.30, "circInOut")
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'delay' and not lowQuality then
        	setProperty('sussyStatic.visible', false)
end
    	if tag == 'tweenstop' and not lowQuality then
		noteTweenAngle('A',6 , 0 , 0.000000001, linear)
		noteTweenAngle('B',7 , 0 , 0.000000001, linear)
		noteTweenAngle('C',8 , 0 , 0.000000001, linear)
		noteTweenAngle('D',9 , 0 , 0.000000001, linear)
		noteTweenAngle('E',10, 0 , 0.000000001, linear)
		noteTweenAngle('F',11, 0 , 0.000000001, linear)

		-- oppt notespin
		noteTweenAngle('G',0 , 0 , 0.000000001, linear)
		noteTweenAngle('H',1 , 0 , 0.000000001, linear)
		noteTweenAngle('I',2 , 0 , 0.000000001, linear)
		noteTweenAngle('J',3 , 0 , 0.000000001, linear)
		noteTweenAngle('K',4 , 0 , 0.000000001, linear)
		noteTweenAngle('L',5 , 0 , 0.000000001, linear)
	end
end
