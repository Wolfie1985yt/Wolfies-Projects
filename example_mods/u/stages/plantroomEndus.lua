

function onStepHit()
if not lowQuality and curStep == 1472 then
makeLuaSprite('floor','mira/glasses',-1225,-750)
makeLuaSprite('sky','mira/bg sky',-1400,-750)
makeLuaSprite('thing','mira/what is this',5,-670)
makeLuaSprite('backcloud','mira/cloud fathest',-1275,0)	
makeLuaSprite('cloud4','mira/cloud 4',-3260,-1510)
makeLuaSprite('front','mira/cloud front',-1350,0)
makeLuaSprite('backpot','mira/lmao',-815,-20)

makeLuaSprite('1', 'mira/cloud 1', 0, -1200)
makeLuaSprite('2', 'mira/cloud 1', 4608, -1200)
makeLuaSprite('3', 'mira/cloud 2', 100, -1470)
makeLuaSprite('4', 'mira/cloud 2', 4708, -1470)
makeLuaSprite('5', 'mira/cloud 3', 0, -1000)
makeLuaSprite('6', 'mira/cloud 3', 4608, -1000)

addLuaSprite('sky',false)
addLuaSprite('backcloud',false)	
addLuaSprite('front',false)	
addLuaSprite('cloud4',false)	
addLuaSprite('5', false)
addLuaSprite('6', false)
addLuaSprite('5speed', false)
addLuaSprite('6speed', false)
addLuaSprite('1', false)
addLuaSprite('2', false)
addLuaSprite('1speed', false)
addLuaSprite('2speed', false)	
addLuaSprite('3', false)
addLuaSprite('4', false)
addLuaSprite('3speed', false)
addLuaSprite('4speed', false)		
addLuaSprite('floor',false)
addLuaSprite('thing',false)
addLuaSprite('backpot',false)	
addLuaSprite('grey', false);
addLuaSprite('tomato', false);
addLuaSprite('RHM', false);
addLuaSprite('vines', true);

if curStep == 1600 then

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

end
end
end