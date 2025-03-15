function onEvent(name, value1, value2)
	if name == 'bgremove scorched' then
    		removeLuaSprite('dead');

		removeLuaSprite('motainsdaead');

		removeLuaSprite('DEADWaterfalls');

		removeLuaSprite('DEADHills');

		removeLuaSprite('deadtrees');

		removeLuaSprite('DEADfloor');

		removeLuaSprite('deadrocks');
	end
end