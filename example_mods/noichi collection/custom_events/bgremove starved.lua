function onEvent(name, value1, value2)
	if name == 'bgremove starved' then
    		removeLuaSprite('StarvedLight');

    		removeLuaSprite('StarvedCity');

    		removeLuaSprite('StarvedTowers');

    		removeLuaSprite('StarvedWall');

    		removeLuaSprite('StarvedSonicDead');
	end
end