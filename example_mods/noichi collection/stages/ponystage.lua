function onCreate()
	-- background shit
	makeLuaSprite('Townbg', 'townbg', -400, -170);
	addLuaSprite('Townbg', false);
	
	makeLuaSprite('Shadows','shadow', 80, 770);
	addLuaSprite('Shadows', false)

	makeAnimatedLuaSprite('ponys','ponybg', -70, 410)
	addAnimationByPrefix('ponys','bounce','ponybg_porche',14,false)
	addLuaSprite('ponys',false)

end
function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('ponys','bounce',true)
	end
end