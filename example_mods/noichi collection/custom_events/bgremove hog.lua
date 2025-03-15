function onEvent(name, value1, value2)
	if name == 'bgremove hog' then
    		removeLuaSprite('hogbg');

		removeLuaSprite('hogmotains');

		removeLuaSprite('hogWaterfalls');

		removeLuaSprite('hogHillsandHills');

		removeLuaSprite('hogtrees');

		removeLuaSprite('hogfloor');

		removeLuaSprite('hogrocks');
	end
end