function onCreate()
	-- background shit
	makeLuaSprite('stagebackkapiold', 'stagebackkapiold', -600, -300);
	setScrollFactor('stagebackkapiold', 0.9, 0.9);
	
	makeLuaSprite('stagefrontkapiold', 'stagefrontkapiold', -650, 600);
	setScrollFactor('stagefrontkapiold', 0.9, 0.9);
	scaleObject('stagefrontkapiold', 1.1, 1.1);
	
	makeAnimatedLuaSprite('spookyBob2', 'littleguys', 10, 100);
	addAnimationByPrefix('spookyBob2','idle','Bottom Level Boppers',24,false);
    setScrollFactor('spookyBob2', 0.9, 0.9);
	
	makeAnimatedLuaSprite('lightBlink','lights',-600,-300)addAnimationByPrefix('lightBlink','dance','lightblink',3,true)
    objectPlayAnimation('lightBlink','dance',false)
    setScrollFactor('lightBlink', 0.9, 0.9);

	addLuaSprite('stagebackkapiold', false);
	addLuaSprite('stagefrontkapiold', false);
	addLuaSprite('spookyBob2', false);
	addLuaSprite('lightBlink', false);

end
function onBeatHit()
	if curBeat % 1 == 0 and not lowQuality then
		objectPlayAnimation('spookyBob2','idle',true)
	makeAnimatedLuaSprite('spookyBob2', 'littleguys', 10, 100);
	addAnimationByPrefix('spookyBob2','idle','Bottom Level Boppers',24,false);
    setScrollFactor('spookyBob2', 0.9, 0.9);
	addLuaSprite('spookyBob2', false);
	end
end