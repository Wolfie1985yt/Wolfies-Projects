local xx = 850;
local yy = 300;
local ofs = 20;
local ofs2 = 20;
local xx2 = 400;
local yy2 = 600;
local followchars = true;
local camZoom = false;
local camZzoom = true;

function onCreate()
	makeLuaSprite('5', 'bgs/fd-bg/classic/5', -1200, -700);
	setLuaSpriteScrollFactor('5', 0.1, 0.1);
	scaleObject('5', 3.00, 3.00);
	setProperty('5.antialiasing', true);
	addLuaSprite('5', false);
	
	makeLuaSprite('4', 'bgs/fd-bg/classic/4', -1200, -700);
	setLuaSpriteScrollFactor('4', 0.3, 0.3);
	scaleObject('4', 3.00, 3.00);
	setProperty('4.antialiasing', true);
	addLuaSprite('4', false);
	
	makeLuaSprite('7', 'bgs/fd-bg/classic/7', 800, -500);
	setLuaSpriteScrollFactor('7', 0.85, 0.85);
	scaleObject('7', 2.00, 2.00);
	setProperty('7.antialiasing', true);
	addLuaSprite('7', false);
	
	makeLuaSprite('3', 'bgs/fd-bg/classic/3', -700, -600);
	setLuaSpriteScrollFactor('3', 0.90, 0.90);
	scaleObject('3', 2.00, 2.00);
	setProperty('3.antialiasing', true);
	addLuaSprite('3', false);
	
	makeLuaSprite('6', 'bgs/fd-bg/classic/6', 0, 60);
	scaleObject('6', 2.00, 2.00);
	setProperty('6.antialiasing', true);
	addLuaSprite('6', false);
	
	makeLuaSprite('1', 'bgs/fd-bg/classic/1', -700, 0);
	scaleObject('1', 2.00, 2.00);
	setProperty('1.antialiasing', true);
	addLuaSprite('1', false);
	
	makeLuaSprite('9', 'bgs/fd-bg/classic/9', -1000, -200);
	setLuaSpriteScrollFactor('9', 1.1, 1.1);
	scaleObject('9', 2.00, 2.00);
	setProperty('9.antialiasing', true);
	addLuaSprite('9', false);
	
	makeLuaSprite('10', 'bgs/fd-bg/classic/10', -1000, -100);
	setLuaSpriteScrollFactor('10', 1.5, 1.5);
	scaleObject('10', 2.00, 2.00);
	setProperty('10.antialiasing', true);
	addLuaSprite('10', false);
	
	makeLuaSprite('2', 'bgs/fd-bg/classic/2', -2100, -500);
	setLuaSpriteScrollFactor('2', 1.7, 1.7);
	scaleObject('2', 3.00, 3.00);
	setProperty('2.antialiasing', true);
	addLuaSprite('2', true);
	
	makeLuaSprite('8', 'bgs/fd-bg/classic/8', -350, 550);
	setLuaSpriteScrollFactor('8', 2.0, 2.0);
	scaleObject('8', 2.00, 2.00);
	setProperty('8.antialiasing', true);
	addLuaSprite('8', true);
	
	makeLuaSprite('1d', 'bgs/fd-bg/dark/1_d', -100, -720);
	setLuaSpriteScrollFactor('1d', 0.2, 0.2);
	scaleObject('1d', 2.00, 2.00);
	setProperty('1d.antialiasing', true);
	addLuaSprite('1d', false);
	
	makeLuaSprite('2d', 'bgs/fd-bg/dark/2_d', -100, -720);
	setLuaSpriteScrollFactor('2d', 1.15, 1.15);
	scaleObject('2d', 2.00, 2.00);
	setProperty('2d.antialiasing', true);
	addLuaSprite('2d', false);
	
	makeLuaSprite('3d', 'bgs/fd-bg/dark/3_d', -100, -720);
	setLuaSpriteScrollFactor('3d', 1.0, 0.7);
	scaleObject('3d', 2.00, 2.00);
	setProperty('3d.antialiasing', true);
	addLuaSprite('3d', false);
	
	makeLuaSprite('4d', 'bgs/fd-bg/dark/4_d', -100, -720);
	setLuaSpriteScrollFactor('4d', 1.0, 1.0);
	scaleObject('4d', 2.00, 2.00);
	setProperty('4d.antialiasing', true);
	addLuaSprite('4d', false);
	
	setProperty('1d.alpha', 0);
	setProperty('2d.alpha', 0);
	setProperty('3d.alpha', 0);
	setProperty('4d.alpha', 0);
	
	makeLuaSprite('blackbg', '', 0, 0);
	makeGraphic('blackbg',1920,1080,'FFFFFF')
	setLuaSpriteScrollFactor('blackbg',0,0)
	setProperty('blackbg.scale.x',2)
	setProperty('blackbg.scale.y',2)
	setProperty('blackbg.alpha',0)
	addLuaSprite('blackbg',true)
	
	setProperty('1.alpha',0)
	setProperty('2.alpha',0)
	setProperty('3.alpha',0)
	setProperty('4.alpha',0)
	setProperty('5.alpha',0)
	setProperty('6.alpha',0)
	setProperty('7.alpha',0)
	setProperty('8.alpha',0)
	setProperty('9.alpha',0)
	setProperty('10.alpha',0)
	setProperty('dadGroup.alpha',0)
	setProperty('boyfriendGroup.alpha',0)
	setProperty('gfGroup.alpha',0)
	setProperty('camHUD.alpha',0)
end

function onStepHit()
	if curStep == 10 then
		doTweenAlpha('white','blackbg',1,0.55, 'linear')
	end
	if curStep == 16 then
		doTweenAlpha('white','blackbg',0,0.2, 'linear')
		doTweenAlpha('dad','dad',1,0.2, 'linear')
		doTweenAlpha('bf','boyfriend',1,0.2, 'linear')
		doTweenAlpha('gf','gf',1,0.2, 'linear')
	end
	if curStep == 64 or curStep == 1108 then
		doTweenAlpha('camhud','camHUD',1,1.8,'linear')
	end
	if curStep == 272 then
		setProperty('1.alpha',1)
		setProperty('2.alpha',1)
		setProperty('3.alpha',1)
		setProperty('4.alpha',1)
		setProperty('5.alpha',1)
		setProperty('6.alpha',1)
		setProperty('7.alpha',1)
		setProperty('8.alpha',1)
		setProperty('9.alpha',1)
		setProperty('10.alpha',1)
	end
	if curStep == 1040 then
		setProperty('1.alpha',0)
		setProperty('2.alpha',0)
		setProperty('3.alpha',0)
		setProperty('4.alpha',0)
		setProperty('5.alpha',0)
		setProperty('6.alpha',0)
		setProperty('7.alpha',0)
		setProperty('8.alpha',0)
		setProperty('9.alpha',0)
		setProperty('10.alpha',0)
		setProperty('camHUD.alpha',0)
	end
	if curStep == 1184 then 
		setProperty('1d.alpha', 1);
		setProperty('2d.alpha', 1);
		setProperty('3d.alpha', 1);
		setProperty('4d.alpha', 1);		
	end
	if curStep == 1312 then 
		setProperty('1d.alpha', 0);
		setProperty('2d.alpha', 0);
		setProperty('3d.alpha', 0);
		setProperty('4d.alpha', 0);		
		setProperty('1.alpha',1)
		setProperty('2.alpha',1)
		setProperty('3.alpha',1)
		setProperty('4.alpha',1)
		setProperty('5.alpha',1)
		setProperty('6.alpha',1)
		setProperty('7.alpha',1)
		setProperty('8.alpha',1)
		setProperty('9.alpha',1)
		setProperty('10.alpha',1)
	end
end	

function onUpdate(elapsed)
	
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

            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
		
        else
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
           
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
            end

			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFTmiss' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHTmiss' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
            
			if getProperty('boyfriend.animation.curAnim.name') == 'singUPmiss' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
            end
           
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWNmiss' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
            end
			
			if getProperty('boyfriend.animation.curAnim.name') == 'shoot1' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
			
			if getProperty('boyfriend.animation.curAnim.name') == 'shoot2' then
                triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
            end
			
			if getProperty('boyfriend.animation.curAnim.name') == 'dodge' then
                triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
            end
			
			if getProperty('boyfriend.animation.curAnim.name') == 'reload' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
			
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
		
        end
    
        triggerEvent('Camera Follow Pos','','')
    
	end
    
end