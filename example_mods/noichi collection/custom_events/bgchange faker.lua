function onEvent(name, value1, value2)
	if name == 'bgchange faker' then
    		makeLuaSprite('sky','fakerBGsky',-400,-200)
    		setLuaSpriteScrollFactor('sky',0.7,0.7)
    		scaleObject('sky',0.8,0.8)
    		addLuaSprite('sky',false)

    		makeLuaSprite('mountain','fakerBGmountains',-350,-200)
    		setLuaSpriteScrollFactor('mountain',0.8,0.8)
    		scaleObject('mountain',0.8,0.8)
    		addLuaSprite('mountain',false)

    		makeLuaSprite('ground','fakerBGgrass',-700,-550)
    		setLuaSpriteScrollFactor('ground',1,1)
    		scaleObject('ground',1,1.1)
    		addLuaSprite('ground',false)

    		makeLuaSprite('plant','plant',-700,-450)
    		setLuaSpriteScrollFactor('plant',1,1)
    		scaleObject('plant',1,1)
    		addLuaSprite('plant',false)

    		makeLuaSprite('tree2','tree2',-700,-400)
    		setLuaSpriteScrollFactor('tree2',1,1)
    		scaleObject('tree2',1,1)
    		addLuaSprite('tree2',false)

    		makeLuaSprite('tree1','tree1',-700,-400)
    		setLuaSpriteScrollFactor('tree1',1,1)
    		scaleObject('tree1',1,1)
    		addLuaSprite('tree1',false)

    		makeLuaSprite('pillar','pillar1',-700,-400)
    		setLuaSpriteScrollFactor('pillar',1,1)
    		scaleObject('pillar',1,1)
    		addLuaSprite('pillar',false)

    		makeLuaSprite('pillar2','pillar2',-700,-400)
    		setLuaSpriteScrollFactor('pillar2',1,1)
    		scaleObject('pillar2',1,1)
    		addLuaSprite('pillar2',false)

    		makeLuaSprite('pillar','pillar1',-700,-400)
    		setLuaSpriteScrollFactor('pillar',1,1)
    		scaleObject('pillar',1,1)
    		addLuaSprite('pillar',false)

    		makeLuaSprite('flower','flower1',-600,-400)
    		setLuaSpriteScrollFactor('flower',1,1)
    		scaleObject('flower',1,1)
    		addLuaSprite('flower',false)

    		makeLuaSprite('flower2','flower2',-800,-400)
    		setLuaSpriteScrollFactor('flower2',1,1)
    		scaleObject('flower2',1,1)
    		addLuaSprite('flower2',false)
     
		setProperty('defaultCamZoom', '0.95')

        	triggerEvent('Change Character', 'bf', 'bf-encorefaker')
        	triggerEvent('Change Character', 'dad', 'faker')

	end
end