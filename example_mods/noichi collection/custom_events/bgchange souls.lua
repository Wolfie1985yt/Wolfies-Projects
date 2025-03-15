function onEvent(name, value1, value2)
	if name == 'bgchange souls' then
    		makeLuaSprite('TrioGlitch','TrioGlitch',-600,-500)

    		makeLuaSprite('TrioBG','TrioBG',-600,-500)
    		setScrollFactor('TrioBG',0.9,0.9)

    		makeLuaSprite('TrioTTTrees','TrioTTTrees',-600,-500)
    		setScrollFactor('TrioTTTrees',0.8,0.8)

    		makeLuaSprite('TrioTree','TrioTree',-600,-500)
    		setScrollFactor('TrioTree',1.1,1)

   		makeLuaSprite('TrioTree2','TrioTree2',-900,-500)
    		setScrollFactor('TrioTree2',1.1,1)
    		scaleObject('TrioTree2',1.2,1.2)

    		makeLuaSprite('TrioGround','TrioGround',-600,-500)

		setProperty('defaultCamZoom', '0.7')

        	triggerEvent('Change Character', 'bf', 'bf-souls')

    		addLuaSprite('TrioGlitch')
    		addLuaSprite('TrioTTTrees',false)
    		addLuaSprite('TrioBG',false)
    		addLuaSprite('TrioGround',false)
    		addLuaSprite('TrioTree',true)
    		addLuaSprite('TrioTree2',true)

		if value1 == '1' then 
        	triggerEvent('Change Character', 'dad', 'tails')
		end

		if value1 == '2' then 
        	triggerEvent('Change Character', 'dad', 'knux')
        	triggerEvent('Change Character', 'bf', 'bf-mirrorOmni')
		end

		if value1 == '3' then 
        	triggerEvent('Change Character', 'dad', 'eggdickOmni')
		end

		if value1 == '4' then 
		setProperty('defaultCamZoom', '1.2')
		end

	end
end