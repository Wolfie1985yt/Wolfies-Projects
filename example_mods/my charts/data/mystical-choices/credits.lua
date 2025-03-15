function onSongStart()
    makeLuaSprite('CreditsBG',nil,-292,200)
    makeGraphic('CreditsBG',432,140,'ffffff')
    setProperty('CreditsBG.alpha',0.4)
    setObjectCamera('CreditsBG','hud')
    addLuaSprite('CreditsBG')
    Text=getTextFromFile('data/mystical-choices/info.txt')
    makeLuaText('CreditsTxt',Text,0,getProperty('CreditsBG.x')+12,getProperty('CreditsBG.y')+12)
    setTextAlignment('CreditsTxt','left')
    setTextSize('CreditsTxt',24)
    setObjectCamera('CreditsTxt','hud')
    addLuaText('CreditsTxt')
end
function onUpdate(elapsed)
    if not Credits and startedCountdown then
        setProperty('CreditsTxt.x',Lerp(getProperty('CreditsTxt.x'),12,0.1))
        setProperty('CreditsBG.x',Lerp(getProperty('CreditsBG.x'),0,0.1))
    else
        setProperty('CreditsTxt.x',Lerp(getProperty('CreditsTxt.x'),-682+12,0.1))
        setProperty('CreditsBG.x',Lerp(getProperty('CreditsBG.x'),-682,0.1))
    end
    if curBeat >= 6 then
        if getProperty('CreditsBG.x')>-0.9 then
            Credits=true
        end
	end
    setObjectOrder('CreditsBG',10000)
    setObjectOrder('CreditsTxt',10001)
end	
function Lerp(Min,Max,Ratio)
    return Min + Ratio * (Max - Min)
end