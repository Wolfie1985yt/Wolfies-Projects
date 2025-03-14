function onCreate()
    setPropertyFromClass('backend.ClientPrefs', 'data.middleScroll', true)
end

function onCreatePost()
    setProperty('timeBar.visible',false);
    setProperty('timeTxt.y', getProperty('timeTxt.y') - 10);
    setProperty('iconP1.visible',false);
    setProperty('iconP2.visible',false);
    setProperty('healthBar.alpha',0.9);
end
function onUpdate()
    for i = 0, 3 do
        setPropertyFromGroup("strumLineNotes", i, "alpha", 0);
    end
    for i = 4, 7 do
        setPropertyFromGroup("strumLineNotes", i, "alpha", 0.9);
    end
end