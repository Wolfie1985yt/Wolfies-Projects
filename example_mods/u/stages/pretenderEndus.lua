
sprite = 'mira/pretender/cloud 2'
size = 4608
startX = 0
startY = -1200
duration = 300
sprite2 = 'mira/pretender/cloud 3'
size2 = 4608
startX2 = 100
startY2 = -1470
duration2 = 450
sprite3 = 'mira/pretender/cloud 1'
size3 = 4608
startX3 = 0
startY3 = -1000
duration3 = 600

function onStepHit()
if not lowQuality and curStep == 1600 then
makeLuaSprite('floor','mira/pretender/ground',-1225,-750)
makeLuaSprite('sky','mira/pretender/bg sky',-1400,-750)
makeLuaSprite('thing','mira/pretender/front plant',5,-670)
makeLuaSprite('backcloud','mira/pretender/cloud fathest',-1275,0)	
makeLuaSprite('cloud4','mira/pretender/cloud 4',-3260,-1510)
makeLuaSprite('front','mira/pretender/cloud front',-1350,0)
makeLuaSprite('backpot','mira/pretender/knocked over plant 2',-825,260)
makeLuaSprite('shadow','mira/pretender/lightingpretender',-1615,-600)
makeLuaSprite('vines','mira/pretender/green',-1350,-505)

makeLuaSprite(sprite .. '2', sprite, startX + size, startY)
makeLuaSprite(sprite2 .. '3', sprite2, startX2, startY2)
makeLuaSprite(sprite2 .. '4', sprite2, startX2 + size2, startY2)
makeLuaSprite(sprite3 .. '5', sprite3, startX3, startY3)
makeLuaSprite(sprite3 .. '6', sprite3, startX3 + size3, startY3)

makeLuaSprite(sprite .. '1speed', sprite, startX, startY)
makeLuaSprite(sprite .. '2speed', sprite, startX + size, startY)
makeLuaSprite(sprite2 .. '3speed', sprite2, startX2, startY2)
makeLuaSprite(sprite2 .. '4speed', sprite2, startX2 + size2, startY2)
makeLuaSprite(sprite3 .. '5speed', sprite3, startX3, startY3)
makeLuaSprite(sprite3 .. '6speed', sprite3, startX3 + size3, startY3)

setGraphicSize('Kpot',575,235)	

setScrollFactor('vines', 0.9, 0.9);

addLuaSprite('sky',false)
addLuaSprite('backcloud',false)
addLuaSprite('front',false)
addLuaSprite('cloud4',false)
addLuaSprite(sprite3 .. '5', false)
addLuaSprite(sprite3 .. '6', false)
addLuaSprite(sprite3 .. '5speed', false)
addLuaSprite(sprite3 .. '6speed', false)
addLuaSprite(sprite .. '1', false)
addLuaSprite(sprite .. '2', false)
addLuaSprite(sprite .. '1speed', false)
addLuaSprite(sprite .. '2speed', false)
addLuaSprite(sprite2 .. '3', false)
addLuaSprite(sprite2 .. '4', false)
addLuaSprite(sprite2 .. '3speed', false)
addLuaSprite(sprite2 .. '4speed', false)
addLuaSprite('floor',false)
addLuaSprite('thing',false)
addLuaSprite('backpot',false)
addLuaSprite('Kpot',false)
addLuaSprite('tomato',false)
addLuaSprite('deadbf',false)
addLuaSprite('rhm',false)
addLuaSprite('blue',true)
addLuaSprite('frontpot',true)
addLuaSprite('vines',true)
addLuaSprite('shadow',true)

setProperty('mira/pretender/cloud 21speed.alpha', 0)
setProperty('mira/pretender/cloud 22speed.alpha', 0)
scrollA()
scrollA2()

setProperty('mira/pretender/cloud 33speed.alpha', 0)
setProperty('mira/pretender/cloud 34speed.alpha', 0)
scrollA3()
scrollA4()

setProperty('mira/pretender/cloud 15speed.alpha', 0)
setProperty('mira/pretender/cloud 16speed.alpha', 0)
scrollA5()
scrollA6()
end
end

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('blue','idle',true);
	end
end

function scrollA()
doTweenX(sprite .. '1move',sprite .. '1', startX - size, duration)
doTweenX(sprite .. '2move',sprite .. '2', startX, duration)
end

function scrollA2()
doTweenX(sprite .. '1moveSpeed',sprite .. '1speed', startX - size, 2)
doTweenX(sprite .. '2moveSpeed',sprite .. '2speed', startX, 2)
end

function scrollA3()
doTweenX(sprite2 .. '3move',sprite2 .. '3', startX2 - size2, duration2)
doTweenX(sprite2 .. '4move',sprite2 .. '4', startX2, duration2)
end

function scrollA4()
doTweenX(sprite2 .. '3moveSpeed',sprite2 .. '3speed', startX2 - size2, 4)
doTweenX(sprite2 .. '4moveSpeed',sprite2 .. '4speed', startX2, 4)
end

function scrollA5()
doTweenX(sprite3 .. '5move',sprite3 .. '5', startX3 - size3, duration3)
doTweenX(sprite3 .. '6move',sprite3 .. '6', startX3, duration3)
end

function scrollA6()
doTweenX(sprite3 .. '5moveSpeed',sprite3 .. '5speed', startX3 - size3, 6)
doTweenX(sprite3 .. '6moveSpeed',sprite3 .. '6speed', startX3, 6)
end

function onTweenCompleted(tag)
if tag == (sprite .. '2move') then
scrollB()
end
if tag == (sprite .. '2move2') then
scrollA()
end

if tag == (sprite .. '2moveSpeed') then
scrollB2()
end
if tag == (sprite .. '2move2Speed') then
scrollA2()
end

if tag == (sprite2 .. '4move') then
scrollB3()
end
if tag == (sprite2 .. '4move4') then
scrollA3()
end

if tag == (sprite2 .. '4moveSpeed') then
scrollB4()
end
if tag == (sprite2 .. '4move4Speed') then
scrollA4()
end

if tag == (sprite3 .. '6move') then
scrollB5()
end
if tag == (sprite3 .. '6move6') then
scrollA5()
end

if tag == (sprite3 .. '6moveSpeed') then
scrollB6()
end
if tag == (sprite3 .. '6move6Speed') then
scrollA6()
end

end

function scrollB()
doTweenX(sprite .. '1move2',sprite .. '1', startX, 0.001)
doTweenX(sprite .. '2move2',sprite .. '2', startX + size, 0.001)
end

function scrollB2()
doTweenX(sprite .. '1move2Speed',sprite .. '1speed', startX, 0.001)
doTweenX(sprite .. '2move2Speed',sprite .. '2speed', startX + size, 0.001)
end

function scrollB3()
doTweenX(sprite2 .. '3move4',sprite2 .. '3', startX2, 0.003)
doTweenX(sprite2 .. '4move4',sprite2 .. '4', startX2 + size2, 0.003)
end

function scrollB4()
doTweenX(sprite2 .. '3move4Speed',sprite2 .. '3speed', startX2, 0.003)
doTweenX(sprite2 .. '4move4Speed',sprite2 .. '4speed', startX2 + size2, 0.003)
end

function scrollB5()
doTweenX(sprite3 .. '5move6',sprite3 .. '5', startX3, 0.005)
doTweenX(sprite3 .. '6move6',sprite3 .. '6', startX3 + size3, 0.005)
end

function scrollB6()
doTweenX(sprite3 .. '5move6Speed',sprite3 .. '5speed', startX3, 0.005)
doTweenX(sprite3 .. '6move6Speed',sprite3 .. '6speed', startX3 + size3, 0.005)
end

function onEndSong()
    followchars = false;
    triggerEvent('Camera Follow Pos','400','150')
end