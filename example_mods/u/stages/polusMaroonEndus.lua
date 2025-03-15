
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx =  1600;
local yy =  1300;
local xx2 = 1800;
local yy2 = 1300;
local ofs = 10;
local followchars = true;
local del = 0;
local del2 = 0;
function onStepHit()
	if not lowQuality and curStep == 1344 then
	makeLuaSprite('bg', 'polus/newstage', 200, 230);
	setProperty('bg.antialiasing', true);
	scaleObject('bg', 0.85, 0.8);
	
	makeLuaSprite('sky', 'polus/newsky', 430, 300);
	setProperty('sky.antialiasing', true);
	scaleObject('sky', 0.75, 0.75);
	
	makeLuaSprite('wall', 'polus/backwall', 168, 230);
	setProperty('wall.antialiasing', true);
	scaleObject('wall', 0.8, 0.8);
	
	makeLuaSprite('overlay', 'polus/newoverlay', 168, 230);
	setProperty('overlay.antialiasing', true);
	scaleObject('overlay', 0.8, 0.8);
	setProperty('overlay.alpha', 0.6)
	
	makeAnimatedLuaSprite('snowfront', 'polus/snowfront', 600, 500);
	addAnimationByPrefix('snowfront','idle','snow fall front instance 1',24,true);
	setProperty('snowfront.antialiasing', true);
	objectPlayAnimation('snowfront','idle',false);
	setProperty('snowfront.alpha', 0.4)
	scaleObject('snowfront', 2, 2);
	
	setObjectOrder('sky', 0);
	setObjectOrder('wall', 1);
	setObjectOrder('bg', 2);
	setObjectOrder('gfGroup', 3);
	setObjectOrder('dadGroup', 4);
	setObjectOrder('boyfriendGroup', 5);
	setObjectOrder('pet',6);
	setObjectOrder('snowfront', 7);
	setObjectOrder('overlay', 8);
end
end

