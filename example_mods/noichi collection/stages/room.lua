function onCreate()
	
	makeLuaSprite('backsky','stages/room/little_guy_dude_backl',-1100,0)
	setScrollFactor('backsky',0.9,1)
	addLuaSprite('backsky',false);
	
	makeLuaSprite('room','stages/room/little_guy_dude',-1150,0)
	addLuaSprite('room',false);

end
function onStepHit()
	if curStep==1983 then --1983
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0);
		startVideo('white_people')
  		setProperty('inCutscene',false)
	elseif curStep == 2000 then
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1);
	end

	if curStep==10847 then
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0);
		startVideo('fnf_mcdonal')
  		setProperty('inCutscene',false)
	elseif curStep == 10976 then
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1);
	end
	
	if curStep == 11792 then
		removeLuaSprite('backsky',false)
		removeLuaSprite('room',false)

		makeLuaSprite('backalley','stages/room/garStagebg',-1100,0)
		setScrollFactor('backalley',0.8,1)
		addLuaSprite('backalley',false)

		makeLuaSprite('frontalley','stages/room/garStage',-1100,0)
		setScrollFactor('frontalley',0.9,1)
		addLuaSprite('frontalley',false)
		
		makeLuaSprite('dedgar','stages/room/RIPBozo2',-700,800)
		setScrollFactor('dedgar',1,1)

		setProperty('boyfriend.x', 300)
	elseif curStep ==11856 then
		addLuaSprite('dedgar',false)
		setProperty('dad.visible', false)
	elseif curStep ==11900 then
		setProperty('dad.visible', true)
		setCharacterY('dad', 300)
		setCharacterX('dad',-400)
	elseif curStep ==11936 then
		setCharacterY('dad', 200)
		setCharacterX('dad',-400)

		removeLuaSprite('backalley',true)
		removeLuaSprite('frontalley',true)
		removeLuaSprite('deadgar',true)
		addLuaSprite('backsky',false)
		addLuaSprite('room',false)
	elseif curStep ==12784 then
		makeLuaSprite('starve','stages/room/rabbit',-570,450)
		setScrollFactor('starve',1,1)
		addLuaSprite('starve',false)
		setProperty('dad.visible', false)
	elseif curStep ==12800 then
		removeLuaSprite('starve',true)
		setProperty('dad.visible', true)
	end

	if curStep==12815 then
		setProperty('vocals.volume',0)
		startVideo('helloeverybody')
  		setProperty('inCutscene',false)
	elseif curStep == 12832 then
		setProperty('vocals.volume',1)
	end
end