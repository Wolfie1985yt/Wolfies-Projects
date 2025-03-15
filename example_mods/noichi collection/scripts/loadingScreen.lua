--Script By JohanaUwU
local sexo = {
'screen1', --nombre de las pantallas de carga
'screen2',
'screen3',
'screen4',
'screen5',
'screen6',
'screen7',
'screen8',
'screen9'
}
local allowCountdown = false

function onStartCountdown()
    if not allowCountdown then
	    return Function_Stop
	end

	if allowCountdown then
	    return Function_Continue
	end
end

function onCreatePost()
johanalol = getRandomInt(1, 9)
webiwabo = sexo[johanalol]
makeLuaSprite('loading', 'loadingscreen/' ..webiwabo, 0, 0)
runTimer('fadeTimer', 6.0, 1)
addLuaSprite('loading', true)
setObjectCamera('loading', 'camOther')
end
function onTimerCompleted(tag) -- bay bay
if tag == 'fadeTimer' then
doTweenAlpha('delete', 'loading', 0, 0.5, 'backIn')
allowCountdown = true
startCountdown()
end
end
function onTweenCompleted(tag) -- webiwabo
if tag == 'delete' then
removeLuaSprite('loading', true)
end
end