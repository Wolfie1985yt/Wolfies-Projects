function onEvent(name, value1, value2)
	if name == 'bgremove X-terion' then
		removeLuaSprite('xterionsky');

		removeLuaSprite('xterionfloor');
	end
end