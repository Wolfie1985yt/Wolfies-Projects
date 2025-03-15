local xx = 700;
local yy = 450;
local xx2 = 1000;
local yy2 = 450;
local ofs = 20;
local followchars = true;

function onCreate()
	makeLuaSprite('Sky', 'Forest/Sky', -800, -600)
	setScrollFactor('Sky', 0.7, 0.7)
	scaleObject('Sky', 1.5, 1.5)
	addLuaSprite('Sky')
	
	makeLuaSprite('FarthestTrees', 'Forest/Three3', getProperty('Sky.x')-300, getProperty('Sky.y')+700)
	setScrollFactor('FarthestTrees', 0.8, 0.8)
	scaleObject('FarthestTrees', 1.5, 1.5)
	addLuaSprite('FarthestTrees')
	
	makeLuaSprite('FurtherTrees', 'Forest/Three2', getProperty('FarthestTrees.x')+220, getProperty('FarthestTrees.y')+20)
	setScrollFactor('FurtherTrees', 0.85, 0.85)
	scaleObject('FurtherTrees', 1.6, 1.6)
	addLuaSprite('FurtherTrees')
	
	makeLuaSprite('Trees', 'Forest/Three1', getProperty('FarthestTrees.x')+150, getProperty('FarthestTrees.y')+70)
	setScrollFactor('Trees', 0.9, 0.9)
	scaleObject('Trees', 1.5, 1.5)
	addLuaSprite('Trees')
	
	makeLuaSprite('Grass', 'Forest/Grass', getProperty('Sky.x')+500, getProperty('Sky.y')+1200)
	setScrollFactor('Grass', 0.95, 0.95)
	scaleObject('Grass', 1.5, 1.5)
	addLuaSprite('Grass')
	
	makeLuaSprite('Ground', 'Forest/Floor', getProperty('Grass.x')+400, getProperty('Grass.y')+150)
	scaleObject('Ground', 2, 2)
	addLuaSprite('Ground')
	
	makeLuaSprite('LeftCliff', 'Forest/Wall2', getProperty('Sky.x'), getProperty('Sky.y')+1100)
	setScrollFactor('LeftCliff', 0.95, 0.95)
	scaleObject('LeftCliff', 2.5, 2.5)
	addLuaSprite('LeftCliff', true)
	
	makeLuaSprite('RightCliff', 'Forest/Wall1', getProperty('Sky.x')+2500, getProperty('Sky.y')-150)
	setScrollFactor('RightCliff', 0.95, 0.95)
	scaleObject('RightCliff', 2, 2.3)
	addLuaSprite('RightCliff', true)
end

function onUpdate(elapsed)
    if followchars then
        if not mustHitSection then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
			end
			if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
			end
        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-beatbox' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-beatbox' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' or getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' or getProperty('boyfriend.animation.curAnim.name') == 'singUP-beatbox' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-beatbox' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' or getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' or getProperty('boyfriend.animation.curAnim.name') == 'idle-beatbox' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
			end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end