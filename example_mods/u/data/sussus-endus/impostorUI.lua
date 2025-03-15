function onCreate()
	makeLuaSprite('newTimeBarBG', 'impostorTimeBar', 100, 100)
	setObjectCamera('newTimeBarBG', 'hud')
	setProperty('newTimeBarBG.alpha', 0)
	addLuaSprite('newTimeBarBG', true)

	makeLuaSprite('newTimeBarFG', null, 0, 0)
	makeGraphic('newTimeBarFG', 392, 11, '2e412e')
	setObjectCamera('newTimeBarFG', 'hud')
	setProperty('newTimeBarFG.alpha', 0)
	addLuaSprite('newTimeBarFG', true)

	makeLuaSprite('newTimeBar', null, 0, 0)
	makeGraphic('newTimeBar', 392, 11, '44d844')
	setObjectCamera('newTimeBar', 'hud')
	setProperty('newTimeBar.scale.x', 0)
	setProperty('newTimeBar.origin.x', 0)
	addLuaSprite('newTimeBar', true)

	makeLuaText('newTimeTxt', 'null', 0, 0, 0)
	setObjectCamera('newTimeTxt', 'hud')
	setTextBorder('newTimeTxt', 1, '000000')
	setProperty('newTimeTxt.alpha', 0)
	setTextSize('newTimeTxt', 14)
	addLuaText('newTimeTxt', true)
	
	setObjectOrder('newTimeBarBG', 1)
	setObjectOrder('newTimeBarFG', 2)
	setObjectOrder('newTimeBar', 3)
	setObjectOrder('newTimeTxt', 4)
end

function onUpdate(elapsed)
	setProperty('timeBar.alpha', 0)
	setProperty('timeTxt.alpha', 0)

    setProperty('health', 1)

	setProperty('newTimeBarBG.y', 22.5)

	setProperty('newTimeBar.y', getProperty('timeBar.y'))
	setProperty('newTimeBar.x', getProperty('newTimeBarBG.x') + 4)

	setProperty('newTimeBarFG.y', getProperty('timeBar.y'))
	setProperty('newTimeBarFG.x', getProperty('newTimeBarBG.x') + 4)

	setProperty('newTimeTxt.y', getProperty('timeBar.y') - 3)
	setProperty('newTimeTxt.x', getProperty('newTimeBarBG.x') + 10)

	setTextString('newTimeTxt', string.upper(songName))

	if ratingFC == 'FC' or ratingFC == 'GFC' or ratingFC == 'SFC' then
		setTextString('scoreTxt', 'Score: '..'Who cares? You already won!'.. ' | Combo Breaks: '..'0'.. ' | Accuracy: '..round((getProperty('ratingPercent') * 100), 2) ..'% ['..ratingFC..']')
		setProperty('healthBar.alpha',0)
		setProperty('iconP1.alpha',0)
		setProperty('iconP2.alpha',0)
	else
		setTextString('scoreTxt', 'Score: '..'Who cares? You already won!'.. ' | Combo Breaks: '..'0'.. ' | Accuracy: '..round((getProperty('ratingPercent') * 100), 2) ..'%')
		setProperty('healthBar.alpha',0)
		setProperty('iconP1.alpha',0)
		setProperty('iconP2.alpha',0)
	end
end

function onSongStart()
	songTime = getProperty('songLength') / 1000

	doTweenX('timeBarFill', 'newTimeBar.scale', 1, songTime, 'linear')
	doTweenAlpha('hello1', 'newTimeBarBG', 1, 0.25, 'linear')
	doTweenAlpha('hello2', 'newTimeTxt', 1, 0.25, 'linear')
end

function onCreatePost()
	setProperty('scoreTxt.color', getIconColor('dad'))
	setProperty('botplayTxt.color', getIconColor('dad'))
end

function getIconColor(chr)
	return getColorFromHex(rgbToHex(getProperty(chr .. ".healthColorArray")))
end

function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end

function onEndSong()
	setProperty('newTimeBarBG.alpha', 0)
	setProperty('newTimeBarFG.alpha', 0)
	setProperty('newTimeBar.alpha', 0)
	setProperty('newTimeTxt.alpha', 0)
end

function onUpdatePost(e)
	setProperty('iconP2.origin.x',80)
	setProperty('iconP1.origin.y',0)
	setProperty('iconP1.origin.x',20)
	setProperty('iconP2.origin.y',0)
	setProperty('iconP2.scale.x',mathlerp(getProperty('iconP2.scale.x'), 1, 0.25))
	setProperty('iconP1.scale.x',mathlerp(getProperty('iconP1.scale.x'), 1, 0.25))
end

function mathlerp(from,to,i)
	return from+(to-from)*i
end

function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
	n = math.pow(10, n or 0)
	x = x * n
	if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
	return x / n
end

function onEvent(n, v1, v2)
	if n == 'Change Character' then
		setProperty('scoreTxt.color', getIconColor('dad'))
		setProperty('botplayTxt.color', getIconColor('dad'))
	end
end