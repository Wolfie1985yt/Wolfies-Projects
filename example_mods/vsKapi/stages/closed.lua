function onCreate()
	-- background shit
	makeLuaSprite('closed', 'closed', -600, -300);
	setScrollFactor('closed', 0.9, 0.9);
	
	makeLuaSprite('stagefrontkapiold', 'stagefrontkapiold', -650, 600);
	setScrollFactor('stagefrontkapiold', 0.9, 0.9);
	scaleObject('stagefrontkapiold', 1.1, 1.1);
	
	makeAnimatedLuaSprite('audienceBob', 'upperBop', -550, -250);
	addAnimationByPrefix('audienceBob','idle','Upper Crowd Bob',24,false);
    setScrollFactor('audienceBob', 0.9, 0.9);
	
	makeAnimatedLuaSprite('lightBlink','lights',-600,-300)
	addAnimationByPrefix('lightBlink','dance','lightblink',3,true)
    objectPlayAnimation('lightBlink','dance',false)
    setScrollFactor('lightBlink', 0.9, 0.9);
	
	makeAnimatedLuaSprite('theFreaks','bgFreaks',-600,-300)
	addAnimationByPrefix('theFreaks','dance','Bottom Level Boppers',28,true)
    setScrollFactor('theFreaks', 0.9, 0.9);
	
	--makeLuaSprite('GODDAMNITYOUSTUPIDASSCAT', 'GODDAMNITYOUSTUPIDASSCAT', -300, -00);
	--setScrollFactor('GODDAMNITYOUSTUPIDASSCAT', 0.9, 0.9); this is an event now

	addLuaSprite('closed', false);
	addLuaSprite('stagefrontkapiold', false);
	addLuaSprite('lightBlink', false);
	addLuaSprite('theFreaks', false);
	addLuaSprite('audienceBob', true);
	--addLuaSprite('GODDAMNITYOUSTUPIDASSCAT', true);
	
end
function onBeatHit()
	if curBeat % 1 == 0 and not lowQuality then
		objectPlayAnimation('audienceBob','idle',true)
		objectPlayAnimation('theFreaks','dance',true)
	end
end
