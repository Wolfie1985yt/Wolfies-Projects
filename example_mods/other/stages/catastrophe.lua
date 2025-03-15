
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 700;
local yy = 650;
local xx2 = 1100;
local yy2 = 650;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()--0.8
	if not lowQuality then
		precacheImage('catastrophe/redmungus_dead')
		precacheImage('catastrophe/Mira_red_dead')
		precacheImage('catastrophe/Mira_yellpw_dead')
		precacheImage('characters/whitebf')
	
		makeLuaSprite('bg', 'catastrophe/Vault_2', -500, -300)
		addLuaSprite('bg',false)
		setGraphicSize('bg',2600,1450)	
	
		makeAnimatedLuaSprite('gray', 'catastrophe/gay', 1250, 720);
		addAnimationByPrefix('gray','idle','gray instance 1',24,false);
		addLuaSprite('gray',true)
		setGraphicSize('gray',350,475)	
		
		makeAnimatedLuaSprite('redmungus', 'catastrophe/redmungus', 50, 750);
		addAnimationByPrefix('redmungus','idle','redmungus',24,false);
		addLuaSprite('redmungus',true)
		setGraphicSize('redmungus',350,425)	
		
		makeAnimatedLuaSprite('onion', 'catastrophe/onion', -350, 750);
		addAnimationByPrefix('onion','idle','onion instance 1',24,false);
		addLuaSprite('onion',true)
		setGraphicSize('onion',350,425)
	
		makeAnimatedLuaSprite('red', 'catastrophe/red_admin', 700, 550);
		addAnimationByPrefix('red','idle','idle',24,false);
		addLuaSprite('red',false)
		setGraphicSize('red',620,325)	
		setProperty('red.flipX', true)	
	
		makeAnimatedLuaSprite('mint', 'catastrophe/mint', 1600, 600);
		addAnimationByPrefix('mint','idle','mint',24,false);
		addLuaSprite('mint',false)
		setGraphicSize('mint',350,400)		
		setProperty('mint.flipX', true)	
	
		makeAnimatedLuaSprite('TAR', 'catastrophe/tanandrichard', -1350, 600);
		addAnimationByPrefix('TAR','idle','tanandrichard',24,false);
		addLuaSprite('TAR',true)
		setGraphicSize('TAR',950,725)
	end
end

function onCreatePost()
	if not lowQuality then
		setProperty('bg.antialiasing',false)
	end
end

function onBeatHit()
	if curBeat % 2 == 0 and not lowQuality then	
		objectPlayAnimation('gray','idle',true);
		objectPlayAnimation('redmungus','idle',true);
		objectPlayAnimation('onion','idle',true);
		objectPlayAnimation('red','idle',true);
		objectPlayAnimation('mint','idle',true);
		objectPlayAnimation('TAR','idle',true);
	end
end

function onStepHit()
	if not lowQuality then
		if curStep == 432 then
			doTweenX('TARxtween', 'TAR',  2000, 20, linear)
		end
		if curStep == 1408 then
			setProperty('bg.visible',false)
			cameraFlash('camGame', 'FFFFFF', 0.35);
			setProperty('bg.visible',false)
			setProperty('gray.visible',false)
			setProperty('redmungus.visible',false)
			setProperty('onion.visible',false)
			setProperty('red.visible',false)
			setProperty('mint.visible',false)
			setProperty('TAR.visible',false)
		end
		if curStep == 1664 then
			cameraFlash('game','000000',0.35)
			makeLuaSprite('deadY', 'catastrophe/Mira_yellpw_dead', 50, 950)
			addLuaSprite('deadY',true)
			setGraphicSize('deadY',340,175)	
		
			makeLuaSprite('deadR', 'catastrophe/Mira_red_dead', 550, 950)
			addLuaSprite('deadR',true)
			setGraphicSize('deadR',340,175)	
			setProperty('deadR.flipX',true)
			
			makeLuaSprite('deadRwall', 'catastrophe/redmungus_dead', 750, 570)
			addLuaSprite('deadRwall',true)
			setGraphicSize('deadRwall',360,345)	
			
			setProperty('bg.visible',true)
		end
	end
end

function onUpdate()
    if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' or getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' or getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' or getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' or getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
        else

            setProperty('defaultCamZoom',0.8)
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
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end