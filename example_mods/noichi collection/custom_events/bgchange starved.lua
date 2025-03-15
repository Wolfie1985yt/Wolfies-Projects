function onEvent(name, value1, value2)
	if name == 'bgchange starved' then
		makeLuaSprite('StarvedLight','starvedlight',-400,-300)
		scaleObject('StarvedLight',1.45,1.45)
		addLuaSprite('StarvedLight')

		makeLuaSprite('StarvedCity','starvedcity',-380,-300)
		scaleObject('StarvedCity',1.45,1.45)
		addLuaSprite('StarvedCity')
		setScrollFactor('StarvedCity',0.7,0.7)

		makeLuaSprite('StarvedTowers','starvedtowers',-380,-300)
		scaleObject('StarvedTowers',1.45,1.45)
		addLuaSprite('StarvedTowers')
		setScrollFactor('StarvedTowers',0.8,0.8)

		makeLuaSprite('StarvedWall','starvedstage',-400,-300)
		scaleObject('StarvedWall',1.45,1.45)
		addLuaSprite('StarvedWall')

		makeLuaSprite('StarvedSonicDead','starvedsonicisfuckingdead',120,50)
		scaleObject('StarvedSonicDead',0.65,0.65)
		addLuaSprite('StarvedSonicDead')

		setProperty('defaultCamZoom', '0.85')

        	triggerEvent('Change Character', 'bf', 'bf-tailsOmni')
        	triggerEvent('Change Character', 'dad', 'starvedOmni')

	end
end