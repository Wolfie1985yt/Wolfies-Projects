function onEvent(name,v1,v2)
	if name == 'stageRemovePink' then
		removeLuaSprite('sky')
		removeLuaSprite('backcloud')	
		removeLuaSprite('front')	
		removeLuaSprite('cloud4')	
		removeLuaSprite('5')
		removeLuaSprite('6')
		removeLuaSprite('5speed')
		removeLuaSprite('6speed')
		removeLuaSprite('1')
		removeLuaSprite('2')
		removeLuaSprite('1speed')
		removeLuaSprite('2speed')	
		removeLuaSprite('3')
		removeLuaSprite('4')
		removeLuaSprite('3speed')
		removeLuaSprite('4speed')		
		makeLuaSprite('mira/cloud 11speed')
		makeLuaSprite('mira/cloud 11')
		makeLuaSprite('mira/cloud 22speed')
		makeLuaSprite('mira/cloud 22')
		makeLuaSprite('mira/cloud 3speed')
		makeLuaSprite('mira/cloud 33')
		removeLuaSprite('floor')
		removeLuaSprite('thing')
		removeLuaSprite('backpot')	
		removeLuaSprite('grey');
		removeLuaSprite('tomato');
		removeLuaSprite('RHM');
		removeLuaSprite('vines');
	end
end