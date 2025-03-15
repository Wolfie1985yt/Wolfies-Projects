function onCreate()
	if songName == 'scratch-post' then
		precacheImage('kapinewback-lightsout')
	end
	makeLuaSprite('bg','kapinewback',-624,-165)
	addLuaSprite('bg',false)	
	
	makeLuaSprite('fg','stagefront',-605,-195)
	addLuaSprite('fg',false)
	
	makeAnimatedLuaSprite('dvd','kapidvd', -624,-165)
	addAnimationByPrefix('dvd','dance','dvdmove',14,true)
	objectPlayAnimation('dvd','dance',false)
	addLuaSprite('dvd',true)
end
function onStepHit()
	if songName == 'scratch-post' and curStep == 576 then
		removeLuaSprite('dvd')
		removeLuaSprite('fg')
		removeLuaSprite('bg')
		
		makeLuaSprite('bg2','kapinewback-lightsout',-624,-165)
		addLuaSprite('bg2',false)	
	
		makeLuaSprite('fg2','stagefront',-605,-195)
		addLuaSprite('fg2',false)
	
		makeAnimatedLuaSprite('dvd2','kapidvd', -624,-165)
		addAnimationByPrefix('dvd2','dance','dvdmove',14,true)
		objectPlayAnimation('dvd2','dance',false)
		addLuaSprite('dvd2',true)
	end
	if curStep == 1440 and songName == 'scratch-post' then
		removeLuaSprite('dvd2')
		removeLuaSprite('fg2')
		removeLuaSprite('bg2')
		
		makeLuaSprite('bg','kapinewback',-624,-165)
		addLuaSprite('bg',false)	
	
		makeLuaSprite('fg','stagefront',-605,-195)
		addLuaSprite('fg',false)
	
		makeAnimatedLuaSprite('dvd','kapidvd', -624,-165)
		addAnimationByPrefix('dvd','dance','dvdmove',14,true)
		objectPlayAnimation('dvd','dance',false)
		addLuaSprite('dvd',true)
	end
end