function onUpdate()
	if curStep == 2368 then
		makeLuaSprite('spotlights2', 'victory_spotlights', -4000, -2500);
		setProperty('spotlights2.visible',true)
		setProperty('spotlights2.alpha', 0.4)
		addLuaSprite('spotlights2',true)
		setObjectOrder('spotlights2',1000001)
		setGraphicSize('spotlights2',20000,5000)

	if buildTarget == 'windows' then
		initLuaShader("bloom")
		
		setSpriteShader("spotlights2", "bloom")
		setSpriteShader("dad", "bloom")
		setSpriteShader("gf", "bloom")
		setSpriteShader("pink", "bloom")
		setSpriteShader("meangus", "bloom")
		setSpriteShader("white", "bloom")
		setSpriteShader("red", "bloom")
		setSpriteShader("impostorG", "bloom")
		setSpriteShader("jorsawsee", "bloom")
		setSpriteShader("henry", "bloom")
		setSpriteShader("warchief", "bloom")
		setSpriteShader("boyfriend", "bloom")
		setSpriteShader("victory", "bloom")
	end
	
		addLuaScript('data/sussus-endus/scripts/victory_pulse')
		
		makeAnimatedLuaSprite('victory', 'victorytext', -450, -375);
		addAnimationByPrefix('victory','idle','VICTORY instance 1',24,false);
		addLuaSprite('victory',false)
	end
end
function onBeatHit()
	if curBeat % 2 == 0 then
		playAnim('victory','idle',true);
	end
end