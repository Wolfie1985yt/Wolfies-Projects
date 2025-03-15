function onEvent(name, value1, value2)
	if name == 'bgremove xeno' then
    		removeLuaSprite('XenoGlitch');

		removeLuaSprite('XenoBackTrees');

		removeLuaSprite('XenoGround');

		removeLuaSprite('TrioTree');

		removeLuaSprite('TrioTree2');
	end
end