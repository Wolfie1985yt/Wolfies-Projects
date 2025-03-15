function onEvent(name, value1, value2)
	if name == "Screen Flash" then
		if flashingLights == true then
			daCam = value1
			daDura = tonumber(value2)
			cameraFlash(daCam, "ffffff", daDura, true)
		end
	end
end