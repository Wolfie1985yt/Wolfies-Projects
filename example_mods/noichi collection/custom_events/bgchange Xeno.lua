function onEvent(name, value1, value2)
	if name == 'bgchange Xeno' then
        	makeAnimatedLuaSprite('XenoGlitch','NewTitleMenuBG',-450,-250)
        	scaleObject('XenoGlitch',5.3,5.3)
        	setProperty('XenoGlitch.antialiasing',false)
        	addAnimationByPrefix('XenoGlitch','WowSky','TitleMenuSSBG',24,true)
        	addLuaSprite('XenoGlitch',false)

       		makeLuaSprite('XenoBackTrees','XenoBackTrees',-600,-500)
        	setScrollFactor('XenoBackTrees',0.8,0.8)
        	scaleObject('XenoBackTrees',1.2,1.2)
        
        	makeLuaSprite('XenoGround','xenoGrass',-600,-600)
        	scaleObject('XenoGround',1.2,1.2)

        	addLuaSprite('XenoGlitch')
        	addLuaSprite('XenoBackTrees')
        	addLuaSprite('XenoGround')

    		makeLuaSprite('TrioTree','TrioTree',-800,-500)
    		setScrollFactor('TrioTree',1.1,1)

   		makeLuaSprite('TrioTree2','TrioTree2',-900,-500)
    		setScrollFactor('TrioTree2',1.1,1)
    		scaleObject('TrioTree2',1.2,1.2)

		setProperty('defaultCamZoom', '0.7')

        	triggerEvent('Change Character', 'bf', 'bf-xeno')
        	triggerEvent('Change Character', 'dad', 'BEAST')

        	addLuaSprite('XenoGlitch')
        	addLuaSprite('XenoBackTrees')
        	addLuaSprite('XenoGround')
    		addLuaSprite('TrioTree',true)
    		addLuaSprite('TrioTree2',true)

	end
end