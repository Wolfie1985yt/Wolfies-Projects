function onSongStart()
    makeVideoSprite('myCutscene', 'x', 0, 0, 'camHUD', false) -- tag, videoFile, x, y, camera, shouldLoop
    setProperty('myCutscene_video.alpha', 1) -- The _video is **REQUIRED**
end

function onVideoFinished(tag)
    debugPrint('Video Finished! ('..tag..')') -- DISCLAMER! Will not call if the video has `shouldLoop` set to true!
end
function onUpdate()
	setObjectOrder('myCutscene_video',1)
	setProperty('iconP1.alpha',0)
	setProperty('iconP2.alpha',0)
	setProperty('healthBar.alpha',0)
	setProperty('timeBar.alpha',0)
	setProperty('timeTxt.alpha',0)
end