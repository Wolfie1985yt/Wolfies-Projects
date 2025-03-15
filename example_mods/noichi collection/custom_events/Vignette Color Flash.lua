function onCreate()
	makeLuaSprite('vignetteWhite', 'backgrounds/vignetteWhite', 0, 0);
	setScrollFactor('vignetteWhite', 1.0, 1.0);
	setObjectCamera('vignetteWhite', 'camHUD')
	addLuaSprite('vignetteWhite', false);
	setProperty('vignetteWhite.alpha', 0)
end

function onEvent(name, value1, value2)
	if name == "Vignette Color Flash" then
		if flashingLights == true then
			color = value1
			duration = tonumber(value2)
			newColor = 0xFFffffff

			if color == "Blue" then
				newColor = '00ffff'
			end
			if color == "Green" then
				newColor = '12fa05'
			end
			if color == "Red" then
				newColor = 'f9393f'
			end
			if color == "Purple" then
				newColor = 'c24b99'
			end

			setProperty('vignetteWhite.color', getColorFromHex(newColor))
			setProperty('vignetteWhite.alpha', 1)

			doTweenAlpha('my asshole burns', 'vignetteWhite', 0, duration, 'quadInOut')
		end
	end
end