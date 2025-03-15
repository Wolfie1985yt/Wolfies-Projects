function onCreate()
	makeLuaSprite('bridge','stages/curse/Terrain',-1050,-750)
	makeLuaSprite('forest','stages/curse/bg',-850,-345)
	makeLuaSprite('sun','stages/curse/Sun and Clouds',-1250,-845)
	makeLuaSprite('sky','stages/curse/Sky',-250,-845)
	
	setGraphicSize('bridge',4050,2000)	
	setGraphicSize('forest',3300,1500)	
	setGraphicSize('sun',4000,2200)	
	setGraphicSize('sky',4000,2200)	
	
	setScrollFactor('forest', 0.7, 0.8)
	setScrollFactor('sun', 0.7, 0.8)
	setScrollFactor('sky', 0.7, 0.8)
	
	setObjectOrder('sky',0)
	setObjectOrder('sun',1)
	setObjectOrder('forest',2)
	setObjectOrder('bridge',3)
	setObjectOrder('gfGroup',4)
	setObjectOrder('boyfriendGroup',5)
	setObjectOrder('dadGroup',6)
end