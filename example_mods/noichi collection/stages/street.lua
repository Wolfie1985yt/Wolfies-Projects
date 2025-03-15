function onCreate()
	makeLuaSprite('sky','stages/street/nothappy_sky',-400,-100);
	setScrollFactor('sky',0.2,0.2);
	scaleObject('sky',1.1,1.1);
	
	makeLuaSprite('ground','stages/street/nothappy_ground',-900,-410);
	setScrollFactor('ground',1,1);

	makeAnimatedLuaSprite('tankman','characters/Tankman',410,230);
	addAnimationByPrefix('tankman','idle','idle',24,false);
	setProperty('tankman.flipX',true)
	setObjectOrder('tankman', 1)
	setProperty('tankman.visible',false)
	objectPlayAnimation('tankman','idle')

	makeLuaSprite('ron','stages/street/RIPBozo',-1050,490);
	setScrollFactor('ron',1,1);
	scaleObject('ron',0.8,0.8);

	makeLuaSprite('deadbf','stages/street/RIPBozo3',400,500)
	setScrollFactor('deadbf',1,1);
	
	makeAnimatedLuaSprite('squosh','stages/street/littleman_dead',-200,650)
	addAnimationByPrefix('squosh','squeesh','dead',24,false)

	makeLuaSprite('shade','stages/street/shade',0,0)
	setObjectCamera('shade', 'other')
	doTweenAlpha('nothere','shade',0,0.01,'linear')

	makeLuaSprite('black', 'stages/street/black',-100,-100)
	setScrollFactor('black',0,0)
	scaleObject('black',2,2);

	makeLuaSprite('spotify','stages/street/spotifyad',0,0)
	setScrollFactor('spotify',0,0)
	--scaleObject('spotify',1.2,1.2);

	makeLuaSprite('fade', 'stages/street/black',-100,-100)
	setScrollFactor('fade',0,0)
	scaleObject('fade',2,2);
	setObjectCamera('fade', 'other')
	doTweenAlpha('nofade','fade',0,0.01,'linear')

	addLuaSprite('sky')
	addLuaSprite('ground')
	addLuaSprite('ron',true)
end

function onStepHit()
	if curStep == 7579 then
		addLuaSprite('fade',true)
		doTweenAlpha('fade','fade',1,1.5,'linear')
	elseif curStep == 7625 then
		addLuaSprite('spotify',true)
		doTweenAlpha('nofade2','fade',0,1.5,'linear')
	elseif curStep == 8112 then
		doTweenAlpha('fade2','fade',1,0.8,'linear')
	elseif curStep == 8128 then
		doTweenAlpha('fadegone','fade',0,0.5,'linear')
		removeLuaSprite('spotify',true)
	end
	if curStep == 8724 then
		setProperty('boyfriend.visible',false)
		addLuaSprite('deadbf',true)
	elseif curStep == 8959 then
		setProperty('boyfriend.visible',false)
		setCharacterX('boyfriend',500)
		setCharacterY('boyfriend',50)
	elseif curStep == 11596 then
		removeLuaSprite('deadbf',true)
		addLuaSprite('tankman',false)
		setProperty('tankman.visible',true)
	end

	if curStep == 11773 then
		doTweenY('jump','boyfriend',100,0.2,'linear')
	elseif curStep == 11774 then --11774
		doTweenX('squish','boyfriend',-210,0.2,'linear')
		doTweenY('stomp','boyfriend',290,0.2,'backIn')
	elseif curStep == 11777 then --11777
		setProperty('dad.visible',false) --2.63
		addLuaSprite('squosh');
		objectPlayAnimation('squosh','squeesh',false)
	elseif curStep == 11808 then
		doTweenX('backX','boyfriend',500,2.63,'linear')
		doTweenY('backY','boyfriend',400,2.63,'linear')
	elseif curStep == 12000 then
		triggerEvent('Camera Follow Pos', -150, 650)
	elseif curStep == 12036 then --12086
		addLuaSprite('shade')
		doTweenAlpha('here','shade',1,4.8,'linear')
		doTweenAlpha('byehud','camHUD',0.5,4.8,'linear')
	elseif curStep == 12087 then
		addLuaSprite('black',true)
	end
end