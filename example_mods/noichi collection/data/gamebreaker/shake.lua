local windowX = 0;
local windowY = 0;
local windowShake = false;

function onStepHit()
	if curStep == 1088 or curStep == 1118 or curStep == 1216 or curStep == 1312 or curStep == 1616 or curStep == 1808 or curStep == 1872 or curStep == 1876 or curStep == 1880 or curStep == 1884 or curStep == 1888 or curStep == 1892 or curStep == 1894 or curStep == 1904 or curStep == 1908 or curStep == 1912 or curStep == 1920 or curStep == 1922 or curStep == 1924 or curStep == 1926 or curStep == 1936 or curStep == 1938 or curStep == 1946 or curStep == 1948 or curStep == 1952 or curStep == 1955 or curStep == 1958 or curStep == 1972 or curStep == 1976 then
		windowShake = true
	end
	if curStep == 1095 or curStep == 1152 or curStep == 1280 or curStep == 1610 or curStep == 1680 or curStep == 1868 or curStep == 1874 or curStep == 1878 or curStep == 1882 or curStep == 1886 or curStep == 1890 or curStep == 1893 or curStep == 1898 or curStep == 1906 or curStep == 1910 or curStep == 1914 or curStep == 1921 or curStep == 1923 or curStep == 1925 or curStep == 1930 or curStep == 1937 or curStep == 1939 or curStep == 1947 or curStep == 1949 or curStep == 1954 or curStep == 1957 or curStep == 1962 or curStep == 1974 or curStep == 2169 then
		windowShake = false
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    windowX = getPropertyFromClass('openfl.Lib', 'application.window.x')
    windowY = getPropertyFromClass('openfl.Lib', 'application.window.y')

    if windowShake == true then
    setPropertyFromClass('openfl.Lib','application.window.x',windowX + math.random(-20, 20))
    setPropertyFromClass('openfl.Lib','application.window.y',windowY + math.random(-30, 30))
    end


end

function onUpdate()
	if curBeat <= 1 then
		setPropertyFromClass('openfl.Lib', 'application.window.y', 300)
		setPropertyFromClass('openfl.Lib', 'application.window.x', 300)	
	end
end
function goodNoteHit()
	setPropertyFromClass('openfl.Lib', 'application.window.y', 300)
	setPropertyFromClass('openfl.Lib', 'application.window.x', 300)	
end