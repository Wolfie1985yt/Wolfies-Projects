function onEvent(name, value1, value2)
	if name == 'bgchange sunky' then
		makeLuaSprite('sunkyBg','sunky BG',-1000,-800)
		scaleObject('sunkyBg',1.3,1.3)

		makeLuaSprite('sunkyball','ball',200,-500)

		makeLuaSprite('sunkyGround','stage',-200,-800)
		scaleObject('sunkyGround',1.3,1.3)


		addLuaSprite('sunkyBg',false)
		addLuaSprite('sunkyball',true)
		addLuaSprite('sunkyGround',false)
     
		setProperty('defaultCamZoom', '0.9')

        	triggerEvent('Change Character', 'bf', 'bf-sunkehOmni')
        	triggerEvent('Change Character', 'dad', 'sunkyOmni')

	end
end