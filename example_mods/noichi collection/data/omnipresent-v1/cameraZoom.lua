function onUpdate()
    if mustHitSection == false and not lowQuality then
        noteTweenAlpha("NoteAlpha1", 0, 1, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha2", 1, 1, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha3", 2, 1, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha4", 3, 1, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha5", 4, 0.5, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha6", 5, 0.5, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha7", 6, 0.5, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha8", 7, 0.5, 0.2, cubeInOut)
    else
        noteTweenAlpha("NoteAlpha1", 0, 0.5, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha2", 1, 0.5, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha3", 2, 0.5, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha4", 3, 0.5, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha5", 4, 1, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha6", 5, 1, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha7", 6, 1, 0.2, cubeInOut)
        noteTweenAlpha("NoteAlpha8", 7, 1, 0.2, cubeInOut)
    end
end