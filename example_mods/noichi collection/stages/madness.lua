function onCreate()
	makeLuaSprite('sky','stages/madness/tiky_sky',-400,-100);
	setScrollFactor('sky',0.2,0.2);
	scaleObject('sky',1.1,1.1);
	
	makeLuaSprite('ground','stages/madness/tiky_ground',-900,-410);
	setScrollFactor('ground',1,1);

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
end

function onStepHit()
	if curStep == 7579 then
		addLuaSprite('fade',true)
		doTweenAlpha('fade','fade',1,1.5,'linear')
	elseif curStep == 7625 then
		addLuaSprite('spotify',true)
		doTweenAlpha('nofade2','fade',0,1.5,'linear')
	elseif curStep == 8128 then
		doTweenAlpha('fade2','fade',1,0.2,'linear')
	end
end