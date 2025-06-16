function onCreatePost()
	makeLuaSprite('healthBarOut', 'hpR-light', 315, 638);
	makeLuaSprite('timeBarOut', 'tbR-light', 422, 27);
	setObjectCamera('healthBarOut', 'hud')
	setObjectCamera('timeBarOut', 'hud')
	setGraphicSize('timeBarOut',437,20)	
	addLuaSprite('healthBarP1',true)
	addLuaSprite('healthBarP2',true)
	addLuaSprite('healthBarOut',true)
	addLuaSprite('iconP1',true)
	addLuaSprite('iconP2',true)
	setObjectOrder('timeBarOut',20)
	setObjectOrder('timeTxt',21)
	setObjectOrder('iconP1',100000)
	setObjectOrder('iconP2',100001)
	setProperty('timeBarOut.alpha',0)
end
function onUpdate()
	setObjectOrder('timebar',46)
	setObjectOrder('timeBarOut',47)
	setObjectOrder('timeTxt',48)
	setProperty('healthBarOut.color',(getColorFromHex(rgbToHex(getProperty('dad.healthColorArray')))))
	setProperty('timeBar.leftBar.color',(getColorFromHex(rgbToHex(getProperty('dad.healthColorArray')))))
	setProperty('timeBarOut.color',(getColorFromHex(rgbToHex(getProperty('dad.healthColorArray')))))
    setPropertyFromGroup('unspawnNotes', i, 'noteSplashData.alpha', 1);
end
function onSongStart()
	doTweenAlpha('appear', 'timeBarOut', 1, 0.25, 'linear')
end
function rgbToHex(rgb) -- https://www.codegrepper.com/code-examples/lua/rgb+to+hex+lua
	return string.format('%02x%02x%02x', math.floor(rgb[1]), math.floor(rgb[2]), math.floor(rgb[3]))
end
	--	setProperty('healthBarOut.color', getColorFromHex('0c0675'))	
function onSpawnNote(i)
    setPropertyFromGroup('notes', i, 'noteSplashData.r', 0xff0000)
    setPropertyFromGroup('notes', i, 'noteSplashData.g', 0x00ff00)
    setPropertyFromGroup('notes', i, 'noteSplashData.b', 0x0000ff)
    setPropertyFromGroup('notes', i, 'noteSplashData.a', 1)
end
