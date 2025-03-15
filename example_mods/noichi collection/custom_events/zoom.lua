function onEvent(name, value1, value2)
	if name == 'zoom' and not lowQuality then
		doTweenZoom('zommingsuspense', 'camGame', 1.1, 12.5, 'quadInOut')
	end
end