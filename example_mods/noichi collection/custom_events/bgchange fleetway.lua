function onEvent(name, value1, value2)
	if name == 'bgchange fleetway' then
        	setProperty('ChamberSky.visible', true)

        	setProperty('ChamberFloor.visible', true)

        	setProperty('ChamberRock.visible', true)

        	setProperty('ChamberPebles.visible', true)

        	setProperty('ChamberRainEmerald2.visible', true)

        	setProperty('ChamberMasterEmerald.visible', true)

        	setProperty('Chamber.visible', true)

		setProperty('defaultCamZoom', '0.7')

        	triggerEvent('Change Character', 'dad', 'fleetwayOmni')
			triggerEvent('Change Character', 'bf', 'bf-fleetw')

		if value1 == '1' then 
        	triggerEvent('Change Character', 'dad', 'fleetwayOmni')
			triggerEvent('Change Character', 'bf', 'bf-fleetw')
		end
		if name == 'bgremove furnace' then
	        triggerEvent('Change Character', 'dad', 'fleetwayOmni')
			triggerEvent('Change Character', 'bf', 'bf-fleetw')
		end
	end
end