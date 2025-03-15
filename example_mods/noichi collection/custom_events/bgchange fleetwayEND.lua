function onEvent(name, value1, value2)
	if name == 'bgchange fleetwayEND' then
		triggerEvent('Change Character', 'dad', 'fleetway')
		
		if value1 == '1' then 
        	triggerEvent('Change Character', 'bf', 'bf-fleetway')
		end
	end
end