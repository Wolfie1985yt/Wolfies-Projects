--FEITO POR ANSFOXY MOBILE
function onCreate()
    makeLuaText("MemoryCounter", "RAM Used: 0 MB", 0, 10, 36)
    setTextSize("MemoryCounter", 14)
    setObjectCamera('MemoryCounter', 'other');
    setTextBorder("MemoryCounter", -1000000000000000000000000, "F8F8FF")
    addLuaText("MemoryCounter")
end

function onUpdate()
    local totalMemory = getPropertyFromClass("openfl.system.System", "totalMemory")
    local memory = math.floor(roundDecimal(totalMemory / 1000000, 1))

    setTextString("MemoryCounter", "RAM Used: " .. memory .. " MB")
end

function roundDecimal(value, precision)
    local mult = 1

    for i = 0, precision do
        mult = mult * 10
    end

    return fround(value * mult, -1) / mult
end

function fround(number, decimals)
    local power = 10 ^ decimals
    return math.floor(number * power) / power
end