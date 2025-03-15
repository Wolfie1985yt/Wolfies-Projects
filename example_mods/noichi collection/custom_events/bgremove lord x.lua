function onEvent(name, value1, value2)
	if name == 'bgremove lord x' then
    		removeLuaSprite('cyclesSky');

    		removeLuaSprite('cyclesMontain');

    		removeLuaSprite('cyclesGround');

    		removeLuaSprite('cyclesNotKnux');

    		removeLuaSprite('cyclesTree2');

    		removeLuaSprite('cyclesPlant');

    		removeLuaSprite('cyclesPlant2');

    		removeLuaSprite('cyclesTree1');

        	setProperty('BlackvignetteCycles.visible', false)
	end
end