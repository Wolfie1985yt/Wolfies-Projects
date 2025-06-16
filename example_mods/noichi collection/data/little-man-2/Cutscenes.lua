local allowCountdown = false
local allowEnd = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('little_man_cutscene');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onEndSong()
	if not allowEnd and isStoryMode then
		startVideo('bigman_cutscene');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end