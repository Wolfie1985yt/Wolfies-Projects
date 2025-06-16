function onUpdate()
	setPropertyFromClass('openfl.Lib','application.window.fullscreen', false)
    addHaxeLibrary('Lib', 'openfl')
    addHaxeLibrary('Application', 'openfl.display')

    runHaxeCode([[
        FlxTween.tween(Lib.application.window, {width: ]] .. getRandomInt(1010, 1010) .. [[}, 1, {ease: 

FlxEase.backInOut});
        FlxTween.tween(Lib.application.window, {height: ]] .. getRandomInt(571, 571) .. [[}, 1, {ease: 

FlxEase.backInOut});
        FlxTween.tween(Lib.application.window, {x: 80}, 1, {ease: FlxEase.backInOut});
    ]])    
end