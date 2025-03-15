-- made by Laztrix#5670
-- please credit if you gonna use this as a mod that will be public

function onEvent(n,v1,v2)
	if n == 'Change Character' then
		runHaxeCode([[
			game.remove(trailBF);
			game.remove(trailDad);
			game.remove(trailGF);
		]])
		runTimer('fade',0.2)
	end
end

function onSongStart()
	makeTrailSprite()
end
function opponentNoteHit(membersIndex, noteData ,noteType, isSustainNote)
			if passDirectionDad ~= nil and noteType == 'White and Black duet' or passDirectionGF ~= nil and noteType == 'White and Black duet' then
				runHaxeCode([[
					trailDad.playAnim(game.singAnimations[]]..passDirectionDad..[[], true);
					trailDad.holdTimer = 0;
				]])
				cancelTimer('dadframed')
				setProperty('trailDad.alpha', 1)
				doTweenAlpha('betraildad', 'trailDad', 0, 0.4, 'linear')
				runHaxeCode([[
					trailGF.playAnim(game.singAnimations[]]..passDirectionGF..[[], true);
					trailGF.holdTimer = 0;
				]])
				setProperty('trailGF.alpha', 1)
				doTweenAlpha('betrailgf', 'trailGF', 0, 0.4,'linear')
				cancelTimer('gfframed')
			end
			passDirectionDad = noteData
			runTimer('dadframed', 0.03)
			passDirectionGF = noteData
			runTimer('gfframed', 0.03)			
end

function onTimerCompleted(tag)
	if tag == 'dadframed' then
		passDirectionDad = nil
	end

	if tag == 'gfframed' then
		passDirectionGF = nil
	end

	if tag == 'bfframed' then
		passDirectionBF = nil
	end

	if tag == 'fade' then
		makeTrailSprite()
	end	
end

function rgbToHex(rgb) -- https://www.codegrepper.com/code-examples/lua/rgb+to+hex+lua
	return string.format('%02x%02x%02x', math.floor(rgb[1]), math.floor(rgb[2]), math.floor(rgb[3]))
end

function makeTrailSprite()
	runHaxeCode([[
		// getting character original position
		var dadPos = [game.dad.x, game.dad.y];
		var gfPos = [game.gf.x, game.gf.y];
		var bfPos = [game.boyfriend.x, game.boyfriend.y];

		// new characters for the trails
		trailDad = new Character(dadPos[0], dadPos[1], game.dad.curCharacter);
		game.addBehindDad(trailDad);
		trailGF = new Character(gfPos[0], gfPos[1], game.gf.curCharacter);
		game.addBehindGF(trailGF);
		trailBF = new Boyfriend(bfPos[0], bfPos[1], game.boyfriend.curCharacter);
		game.addBehindBF(trailBF);

		// set the variable so you can mess it with setProperty stuff
		game.variables.set('trailDad', trailDad);
		game.variables.set('trailGF', trailGF);
		game.variables.set('trailBF', trailBF);

		// grrr
		trailDad.alpha = 0;
		trailGF.alpha = 0;
		trailBF.alpha = 0;

		// color
		trailDad.color = ]] .. getColorFromHex(rgbToHex(getProperty('dad.healthColorArray'))) .. [[;
		trailGF.color = ]] .. getColorFromHex(rgbToHex(getProperty('gf.healthColorArray'))) .. [[;
		trailBF.color = ]] .. getColorFromHex(rgbToHex(getProperty('boyfriend.healthColorArray'))) .. [[;
	]])
end

-- made by Laztrix#5670
-- please credit if you gonna use this as a mod that will be public