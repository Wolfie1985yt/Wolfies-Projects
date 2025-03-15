--Created by RamenDominoes (Please credit if using this, thanks! <3)

function onCreatePost()

    makeLuaSprite('UpperBar(With HUD)', 'empty', -110, -350)
	makeGraphic('UpperBar(With HUD)', 1500, 350, '000000')
	setObjectCamera('UpperBar(With HUD)', 'hud')
	addLuaSprite('UpperBar(With HUD)', false)

    makeLuaSprite('LowerBar(With HUD)', 'empty', -110, 720)
	makeGraphic('LowerBar(With HUD)', 1500, 350, '000000')
	setObjectCamera('LowerBar(With HUD)', 'hud')
	addLuaSprite('LowerBar(With HUD)', false)

    UpperBar = getProperty('UpperBar(With HUD).y')
	LowerBar = getProperty('LowerBar(With HUD).y')

    for Notes = 0,7 do 
        StrumY = getPropertyFromGroup('strumLineNotes', Notes, 'y')
    end
end

function onEvent(name, value1, value2)
	
	if name == 'Cinematics (With HUD)' and not lowQuality then
	
		Speed = tonumber(value1)
		Distance = tonumber(value2)
		triggerEvent('Add Camera Zoom', 0.05, 0.01)

--ENTRANCES

		if Speed and Distance > 0 then

			doTweenY('With HUD1', 'UpperBar(With HUD)', UpperBar + Distance, Speed, 'QuadOut')
			doTweenY('With HUD2', 'LowerBar(With HUD)', LowerBar - Distance, Speed, 'QuadOut')

			for Tweens = 0,7 do 
				noteTweenY('MoveIn(With HUD)'..Tweens, Tweens, (StrumY + Distance) - 35, Speed, 'QuadOut')

			end
		end

		if downscroll and Speed and Distance > 0 then
		
			doTweenY('With HUD1', 'UpperBar(With HUD)', UpperBar + Distance, Speed, 'QuadOut')
			doTweenY('With HUD2', 'LowerBar(With HUD)', LowerBar - Distance, Speed, 'QuadOut')

		end

		if Distance <= 0 then

			doTweenY('With HUD1', 'UpperBar(With HUD)', UpperBar, Speed, 'QuadIn')
			doTweenY('With HUD2', 'LowerBar(With HUD)', LowerBar, Speed, 'QuadIn')

		end	
	end
end
