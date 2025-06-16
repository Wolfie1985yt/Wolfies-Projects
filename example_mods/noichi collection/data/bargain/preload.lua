function onCreate()
    makeVideoSprite('myCutscene', 'preload', 0, 0, 'camHUD', false) -- tag, videoFile, x, y, camera, shouldLoop
    setProperty('myCutscene_video.alpha', 1) -- The _video is **REQUIRED**
end