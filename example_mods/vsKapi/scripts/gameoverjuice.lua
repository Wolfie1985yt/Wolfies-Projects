local dead = false
function onCreate()
	setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'KAPIBOYFRIEND'); --Character json file for the death animation
	setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'StoleYoBitch'); --put in mods/sounds/
	setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'NahNvm'); --put in mods/music/
end
function onGameOver()
	dead = true
end
function onUpdate()
	if dead == true then
	    triggerEvent('Camera Follow Pos',200,-10000)
	end
end