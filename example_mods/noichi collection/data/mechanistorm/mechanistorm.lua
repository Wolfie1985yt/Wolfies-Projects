local allowCountdown = false
function onStartCountdown()
    if not allowCountdown and isStoryMode and not seenCutscene then
        startVideo('cutscene2');
        allowCountdown = true;
        return Function_Stop;
    end
    return Function_continue;
end

function onEndSong()
	if not allowEnd and isStoryMode then
		startVideo('endcut');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end


function onCreatePost()
	setProperty('gf.alpha', 100);
end

function onCreatePost()
    triggerEvent('Camera Follow Pos',xx,yy)
end

local xx = -100; --750
local yy = 1250; --750
local xx2 = 200; --1500
local yy2 = 1250; --750
local ofs = 80;
local followchars = true;
local beating = false;

function onCreate()
	--background boi
    makeLuaSprite('Stage','tina', -2000, -550)
    makeLuaSprite('sky','tina-sky', -2200, 100)
      setScrollFactor('sky', 1.3, 1.3);
    makeLuaSprite('front', 'Front', -2900, 2200)
      setLuaSpriteScrollFactor('front', 3, 3)
	
    addLuaSprite('sky')
    addLuaSprite('Stage')
    addLuaSprite('front', true)
end


function onUpdate()
  if followchars == true then
      if mustHitSection == false then
          if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
              triggerEvent('Camera Follow Pos',xx-ofs,yy)
          end
          if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
              triggerEvent('Camera Follow Pos',xx+ofs,yy)
          end
          if getProperty('dad.animation.curAnim.name') == 'singUP' then
              triggerEvent('Camera Follow Pos',xx,yy-ofs)
          end
          if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
              triggerEvent('Camera Follow Pos',xx,yy+ofs)
          end
          if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
              triggerEvent('Camera Follow Pos',xx-ofs,yy)
          end
          if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
              triggerEvent('Camera Follow Pos',xx+ofs,yy)
          end
          if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
              triggerEvent('Camera Follow Pos',xx,yy-ofs)
          end
          if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
              triggerEvent('Camera Follow Pos',xx,yy+ofs)
          end
          if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
              triggerEvent('Camera Follow Pos',xx,yy)
          end
    if getProperty('dad.animation.curAnim.name') == 'idle' then
              triggerEvent('Camera Follow Pos',xx,yy)
    end

      else

          if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
              triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
          end
          if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
              triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
          end
          if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
              triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
          end
          if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
              triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
          end
    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
              triggerEvent('Camera Follow Pos',xx2,yy2)
    end
      end
  else
      triggerEvent('Camera Follow Pos','','')
  end
  
end

function onCreate()
    setProperty('camHUD.visible', true);
    makeLuaSprite('csdown','cutscene1', 0, 0)
	makeLuaSprite('csup','cutscene2', 0, 0)

    addLuaSprite('csup')
	addLuaSprite('csdown')

    setProperty('csup.alpha', 1);
	setObjectCamera('csup', 'hud');
	setProperty('csdown.alpha', 1);
	setObjectCamera('csdown', 'hud')

    setObjectCamera('Name', 'hud');
	scaleObject('Name',0.75,0.75)
end



