function onEvent(name, value1, value2)
	if name == 'bgchange sarah' then
    		makeLuaSprite('NeedleSky','sky',-900,-500)
    		scaleObject('NeedleSky',1.35,1.35)
    		setScrollFactor('NeedleSky',0.8,0.8)
    		addLuaSprite('NeedleSky')

    		makeLuaSprite('NeedleMountains','mountains',-900,-800)
    		scaleObject('NeedleMountains',1.35,1.35)
    		setScrollFactor('NeedleMountains',0.9,0.9)
    		addLuaSprite('NeedleMountains')

    		makeLuaSprite('NeedleBuildings','buildings',-800,-600)
    		scaleObject('NeedleBuildings',1.2,1.2)
    		addLuaSprite('NeedleBuildings')

    		makeLuaSprite('NeedleFront','fg',-800,-600)
    		scaleObject('NeedleFront',1.2,1.2)
    		setScrollFactor('NeedleFront',1.05,1.05)
    		addLuaSprite('NeedleFront',true)
    
    		makeLuaSprite('NeedleRuins','ruins',-900,-900)
    		scaleObject('NeedleRuins',1.35,1.35)
    		addLuaSprite('NeedleRuins')
    
    		makeLuaSprite('NeedleGround','CONK_CREET',-900,-900)
    		scaleObject('NeedleGround',1.35,1.35)
    		addLuaSprite('NeedleGround')
     
		setProperty('defaultCamZoom', '0.55')

        	triggerEvent('Change Character', 'bf', 'bf-needleOmni')
        	triggerEvent('Change Character', 'dad', 'NeedlemouseOmni')

	end
end