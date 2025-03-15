
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0
local xx = 200;
local yy = 550;
local xx2 = 1200;
local yy2 = 600;
local ofs = 0;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
	precacheImage('noteSplashes/noteSplashes')
	if not lowQuality then
	makeLuaSprite('barsWhOver', 'whiteOver', -1000, -100)
	setGraphicSize('barsWhOver', 2320, 1280)	
	makeLuaSprite('barsGray', 'grayOver', -1000, -100)
	setGraphicSize('barsGray', 2320, 1280)
	makeLuaSprite('barsRed', 'rednessBars', -1000, -100)
	setGraphicSize('barsRed', 2320, 1280)
	makeLuaSprite('barsMar', 'maroonShading', -1000, -100)
	setGraphicSize('barsMar', 2320, 1280)
	makeLuaSprite('barsGreen', 'blockade/blockGreen', -1000, -100)
	setGraphicSize('barsGreen', 2320, 1280)
	makeLuaSprite('barsB', 'blockade/blockBlack', -1000, -100)
	setGraphicSize('barsB', 2320, 1280)
	makeLuaSprite('barsM', 'blockade/blockMaroon', -1000, -100)
	setGraphicSize('barsM', 2320, 1280)
	makeLuaSprite('barsB2', 'blockade/blockBlack2', -1000, -100)
	setGraphicSize('barsB2', 2320, 1280)
	makeLuaSprite('bars2', 'bars2', -1000, -100)
	setGraphicSize('bars2', 2320, 1280)
	makeLuaSprite('barsU', 'bars', -1000, -100)
	setGraphicSize('barsU', 2320, 1280)
	makeLuaSprite('bars3', 'bars3', -1000, -100)
	setGraphicSize('bars3', 2320, 1280)
	makeLuaSprite('bars4', 'bars4', -1000, -100)
	setGraphicSize('bars4', 2320, 1280)
	makeLuaSprite('bars5', 'bars5', -1000, -100)
	setGraphicSize('bars5', 2320, 1280)
	makeLuaSprite('bars6', 'bars6', -1000, -100)
	setGraphicSize('bars6', 2320, 1280)
	makeLuaSprite('bars7', 'bars7', -1000, -100)
	setGraphicSize('bars7', 2320, 1280)
	makeLuaSprite('bars8', 'bars8', -1000, -100)
	setGraphicSize('bars8', 2320, 1280)
	makeLuaSprite('barsG1', 'grid6/polusR', -900, -50)
	setGraphicSize('barsG1', 2180, 1240)
	makeLuaSprite('barsG2', 'grid6/mira', -900, -50)
	setGraphicSize('barsG2', 2180, 1240)
	makeLuaSprite('barsG3', 'grid6/defeat', -900, -50)
	setGraphicSize('barsG3', 2180, 1240)
	makeLuaSprite('barsG4', 'grid6/airship', -900, -50)
	setGraphicSize('barsG4', 2180, 1240)
	makeLuaSprite('barsG5', 'grid6/cargo', -900, -50)
	setGraphicSize('barsG5', 2180, 1240)
	makeLuaSprite('barsG6', 'grid6/polusM', -900, -50)
	setGraphicSize('barsG6', 2180, 1240)
	makeLuaSprite('barsG7', 'grid6/plantroom', -900, -50)
	setGraphicSize('barsG7', 2180, 1240)
	makeLuaSprite('barsG8', 'grid6/electrical', -900, -50)
	setGraphicSize('barsG8', 2180, 1240)
	makeLuaSprite('barsG9', 'grid6/O2', -900, -50)
	setGraphicSize('barsG9', 2180, 1240)
	makeLuaSprite('barsG10', 'grid6/lobby', -900, -50)
	setGraphicSize('barsG10', 2180, 1240)
	makeLuaSprite('barsG11', 'grid6/lounge2', -900, -50)
	setGraphicSize('barsG11', 2180, 1240)
	makeLuaSprite('barsG12', 'grid6/electrical2', -900, -50)
	setGraphicSize('barsG12', 2180, 1240)
	makeLuaSprite('barsG13', 'grid6/lounge', -900, -50)
	setGraphicSize('barsG13', 2180, 1240)
	makeLuaSprite('barsG14', 'grid6/victory', -900, -50)
	setGraphicSize('barsG14', 2180, 1240)
	makeLuaSprite('barsG15', 'grid6/monotone', -900, -50)
	setGraphicSize('barsG15', 2180, 1240)
	makeLuaSprite('barsGU', 'grid6/bars', -900, -50)
	setGraphicSize('barsGU', 2180, 1240)
	makeLuaSprite('barsGW', 'grid6/whiteOverlay', -900, -50)
	setGraphicSize('barsGW', 2180, 1240)
	makeLuaSprite('barsGR', 'grid6/blackOverlay', -900, -50)
	setGraphicSize('barsGR', 2180, 1240)
	makeLuaSprite('barsGM', 'grid6/maroonOverlay', -900, -50)
	setGraphicSize('barsGM', 2180, 1240)
	makeLuaSprite('grayOverlay', 'grid6/grayOverlay', -900, -50)
	setGraphicSize('grayOverlay', 2180, 1240)
	makeLuaSprite('meanO', 'grid6/meangusO', -900, -50)
	setGraphicSize('meanO', 2180, 1240)
	makeLuaSprite('vicOver', 'grid6/victoryBlue', -900, -50)
	setGraphicSize('vicOver', 2180, 1240)
	makeLuaSprite('greyBlock', 'blockade/blockGrey', -900, -50)
	setGraphicSize('greyBlock', 2180, 1240)
	
	precacheImage('bars')
	precacheImage('bars2')
	precacheImage('bars3')
	precacheImage('bars4')
	precacheImage('bars5')
	precacheImage('bars6')
	precacheImage('bars7')
	precacheImage('bars8')
	precacheImage('blackscreen')
	precacheImage('whiteOver')
	precacheImage('maroonShading')
	precacheImage('rednessBars')
	precacheImage('Untitled')
	precacheImage('grid6/airship')
	precacheImage('grid6/bars')
	precacheImage('grid6/blackOverlay')
	precacheImage('grid6/cargo')
	precacheImage('grid6/defeat')
	precacheImage('grid6/electrical')
	precacheImage('grid6/electrical2')
	precacheImage('grid6/grayOverlay')
	precacheImage('grid6/lobby')
	precacheImage('grid6/lounge')
	precacheImage('grid6/lounge2')
	precacheImage('grid6/maroonOverlay')
	precacheImage('grid6/meangusO')
	precacheImage('grid6/mira')
	precacheImage('grid6/monotone')
	precacheImage('grid6/O2')
	precacheImage('grid6/plantroom')
	precacheImage('grid6/polusM')
	precacheImage('grid6/polusR')
	precacheImage('grid6/victory')
	precacheImage('grid6/victoryBlue')
	precacheImage('grid6/whiteOverlay')
	precacheImage('blockade/blockBlack')
	precacheImage('blockade/blockBlack2')
	precacheImage('blockade/blockBlack3')
	precacheImage('blockade/blockGreen')
	precacheImage('blockade/blockLime')
	precacheImage('blockade/blockLime2')
	precacheImage('blockade/blockLime3')
	precacheImage('blockade/blockMaroon')
	precacheImage('blockade/blockGrey')
	precacheImage('characters/yellow')
	precacheImage('characters/bfscary')
	precacheImage('characters/bfscary')
	precacheImage('characters/esculent')
	precacheImage('characters/grey')
	precacheImage('characters/impostor3')
	precacheImage('characters/LIME_GRTEEN')
	precacheImage('characters/maroon')
	precacheImage('characters/meangus')
	precacheImage('characters/pink')
	precacheImage('characters/powers')
	precacheImage('characters/impostor')
	precacheImage('characters/warchief')
	precacheImage('characters/white')
	precacheImage('characters/black')
end
end
function onStartCountdown()
	setProperty('dad.visible',false)
	setProperty('gf.visible',false)
	setProperty('boyfriend.visible',false)
	setProperty('camHUD.alpha',0)
end
function onSongStart()
	if not lowQuality then
		makeLuaSprite('bars1', 'untitled', -1000, -100)
		setGraphicSize('bars1', 2320, 1280)
		setObjectOrder('bars1',4)
	end
	setObjectOrder('red',5)
	setObjectOrder('barsU',31)
	setProperty('camHUD.alpha',1)
end
function onStepHit()
	if curStep == 64 then
		setObjectOrder('bars2',2)
		setObjectOrder('green',3)	
		addLuaSprite('barsGreen',true)
	end
	if curStep == 128 then
		setObjectOrder('bars3',0)
		addLuaSprite('barsRed',true)
		setObjectOrder('dadGroup',1)
		setProperty('dad.visible',true)
		removeLuaSprite('barsGreen')
		setObjectOrder('barsB',6)
	end
	if curStep == 192 then
		setObjectOrder('bars4',6)
		setObjectOrder('yellow',7)	
		setObjectOrder('barsB',8)
		removeLuaSprite('barsB')		
		setObjectOrder('barsB2',10)		
	end
	if curStep == 256 then
		setObjectOrder('bars5',8)
		setObjectOrder('white',9)
		addLuaSprite('barsWhOver',true)
	end
	if curStep == 320 then
		setObjectOrder('bars6',10)
		setObjectOrder('maroon',11)
		setObjectOrder('barsM',12)
		removeLuaSprite('barsB2')
		addLuaSprite('barsMar',true)
		setProperty('barsMar.alpha',0.4)
	end
	if curStep == 384 then
		setObjectOrder('bars7',12)
		setObjectOrder('pink',13)
		removeLuaSprite('barsM')
	end
	if curStep == 448 then
		setObjectOrder('bars8',14)
		setObjectOrder('gray',15)
		addLuaSprite('barsGray',true)
	end
	if curStep == 512 then
		setProperty('bars2.visible',false)	
		setProperty('green.visible',false)	
		setProperty('bars3.visible',false)	
		setProperty('dad.visible',false)	
		setProperty('barsRed.visible',false)	
		setProperty('bars4.visible',false)	
		setProperty('yellow.visible',false)	
		setProperty('bars5.visible',false)	
		setProperty('white.visible',false)	
		setProperty('barsWhOver.visible',false)	
		setProperty('bars6.visible',false)	
		setProperty('maroon.visible',false)
		setProperty('barsMar.visible',false)
	end
	if curStep == 516 or curStep == 616 or curStep == 624 or curStep == 632 or curStep == 640 then
		setProperty('bars8.visible',false)	
		setProperty('gray.visible',false)
		setProperty('barsGray.visible',false)
	end
	if curStep == 544 then
		setProperty('bars4.visible',true)	
		setProperty('yellow.visible',true)	
	end
	if curStep == 576 then
		setProperty('bars7.visible',false)	
		setProperty('pink.visible',false)
		setProperty('bars6.visible',true)	
		setProperty('maroon.visible',true)
		setProperty('barsMar.visible',true)
		setProperty('bars5.visible',true)	
		setProperty('white.visible',true)	
		setProperty('barsWhOver.visible',true)	
		setProperty('bars4.visible',false)	
		setProperty('yellow.visible',false)
		makeLuaSprite('barsM2', 'blockade/blockMaroon', -1000, -100)
		setGraphicSize('barsM2', 2320, 1280)
		addLuaSprite('barsM2',true)
	end
	if curStep == 612 or curStep == 620 or curStep == 628 or curStep == 636 then
		setProperty('bars8.visible',true)	
		setProperty('gray.visible',true)
		setProperty('barsGray.visible',true)
	end
	if curStep == 640 then		
		setProperty('bars6.visible',false)	
		setProperty('maroon.visible',false)
		setProperty('barsMar.visible',false)
		setProperty('bars5.visible',false)	
		setProperty('white.visible',false)
		setProperty('barsWhOver.visible',false)			
		setProperty('dad.visible',true)	
		setProperty('barsRed.visible',true)	
		setProperty('bars3.visible',true)	
		removeLuaSprite('barsM2')
		makeLuaSprite('barsB3', 'blockade/blockBlack3', -1000, -100)
		setGraphicSize('barsB3', 2320, 1280)
		addLuaSprite('barsB3',true)
	end
	if curStep == 704 then
		setProperty('bars4.visible',true)	
		setProperty('yellow.visible',true)	
		setProperty('bars7.visible',true)	
		setProperty('pink.visible',true)
		setProperty('bars3.visible',false)
		setProperty('dad.visible',false)
		setProperty('barsRed.visible',false)
		removeLuaSprite('barsB3')
	end
	if curStep == 752 then
		setProperty('bars4.visible',false)	
		setProperty('yellow.visible',false)	
	end
	if curStep == 753 then
		setProperty('bars7.visible',false)	
		setProperty('pink.visible',false)	
	end
	if curStep == 768 then
		setProperty('bars8.visible',true)	
		setProperty('gray.visible',true)	
		setProperty('barsGray.visible',true)
		setProperty('bars7.visible',true)	
		setProperty('pink.visible',true)
		setProperty('bars6.visible',true)	
		setProperty('maroon.visible',true)
		setProperty('barsMar.visible',true)
		setProperty('bars5.visible',true)	
		setProperty('white.visible',true)	
		setProperty('barsWhOver.visible',true)	
		setProperty('bars4.visible',true)	
		setProperty('yellow.visible',true)	
		setProperty('bars3.visible',true)	
		setProperty('green.visible',true)	
		setProperty('dad.visible',true)
		setProperty('barsRed.visible',true)	
		setProperty('bars2.visible',true)
		setProperty('bars1.visible',true)
	end
	if curStep == 1008 then
		setProperty('bars8.visible',false)	
		setProperty('gray.visible',false)	
		setProperty('barsGray.visible',false)
		setProperty('bars7.visible',false)	
		setProperty('pink.visible',false)
		setProperty('bars6.visible',false)	
		setProperty('maroon.visible',false)
		setProperty('barsMar.visible',false)
		setProperty('bars5.visible',false)	
		setProperty('white.visible',false)
		setProperty('barsWhOver.visible',false)	
		setProperty('bars4.visible',false)	
		setProperty('yellow.visible',false)	
		setProperty('bars3.visible',true)	
		setProperty('green.visible',false)	
		setProperty('dad.visible',true)
		setProperty('barsRed.visible',true)	
		setProperty('bars2.visible',false)
		makeLuaSprite('barsB4', 'blockade/blockBlack3', -1000, -100)
		setGraphicSize('barsB4', 2320, 1280)
		addLuaSprite('barsB4',true)
	end
	if curStep == 1024 then
		removeLuaSprite('barsB4')
		setProperty('dad.visible',false)
		setProperty('red.visible',false)
		setProperty('bars2.visible',false)
		setProperty('barsRed.visible',false)
		setProperty('barsU.visible',false)
		setProperty('bars3.visible',false)
		setProperty('bars1.visible',false)
		setObjectOrder('barsGU',31)
		setObjectOrder('barsG1',3)
		setObjectOrder('red2',4)
		setObjectOrder('barsG2',5)
		setObjectOrder('green2',6)
		setObjectOrder('lime',20)
		setObjectOrder('barsG9',19)
		makeLuaSprite('barsGL', 'blockade/blockLime', -900, -50)
		setGraphicSize('barsGL', 2180, 1240)
		addLuaSprite('barsGL',true)
	end
	if curStep == 1088 then
		setObjectOrder('barsG13',25)
		setObjectOrder('meangus',26)
		setObjectOrder('barsG4',7)
		setObjectOrder('yellow2',8)
		setObjectOrder('barsG3',1)
		setObjectOrder('dadGroup',2)
		setProperty('dadGroup.visible',true)
		removeLuaSprite('barsGL')
		makeLuaSprite('barsGL2', 'blockade/blockLime3', -900, -50)
		setGraphicSize('barsGL2', 2180, 1240)
		addLuaSprite('barsGL2',true)
		doTweenY('dadytween', 'dadGroup', 0, 0.01, 'linear')
		doTweenX('dadxtween', 'dadGroup', 420, 0.01, 'linear')
		addLuaSprite('barsGR',true)		
		addLuaSprite('meanO',true)	
		setProperty('meanO.alpha',0.7)
	end
	if curStep == 1152 then
		removeLuaSprite('barsGL2')
		setObjectOrder('barsG6',9)
		setObjectOrder('maroon2',10)
		setObjectOrder('barsG5',11)
		setObjectOrder('white2',12)
		setObjectOrder('barsG10',17)
		setObjectOrder('powers',18)	
		makeLuaSprite('barsGL3', 'blockade/blockLime2', -900, -50)
		setGraphicSize('barsGL3', 2180, 1240)
		addLuaSprite('barsGL3',true)		
		addLuaSprite('barsGW',true)		
		addLuaSprite('barsGM',true)	
		setProperty('barsGM.alpha',0.4)
	end
	if curStep == 1216 then
		setObjectOrder('barsG7',13)
		setObjectOrder('pink2',14)
		setObjectOrder('barsG12',15)
		setObjectOrder('brown',16)
		setProperty('brown.alpha',0.7)
	end
	if curStep == 1280 then
		setObjectOrder('barsG14',21)
		setObjectOrder('warchief',22)
		setObjectOrder('barsG8',27)
		setObjectOrder('grey',28)
		addLuaSprite('greyBlock',true)
		removeLuaSprite('barsGL3')
		addLuaSprite('grayOverlay',true)
		addLuaSprite('vicOver',true)
		setProperty('vicOver.alpha',0.7)
	end
	if curStep == 1344 then
		setObjectOrder('barsG11',29)
		setObjectOrder('gfGroup',30)
		setProperty('gf.visible',true)
		removeLuaSprite('greyBlock')
	end
	if curStep == 1408 then
		setObjectOrder('barsG15',23)
		setObjectOrder('boyfriendGroup',24)
		setProperty('boyfriend.visible',true)
		setProperty('boyfriendGroup.visible',true)
	end
	if curStep == 1536 then
		makeLuaSprite('blackScreen', 'blackscreen', -900, -50)
		setGraphicSize('blackScreen', 10000000, 1000000)		
		addLuaSprite('blackScreen',true)
	end
end
function onUpdate()
	setProperty('timeBar.alpha',0)
	setProperty('timeTxt.alpha',0)
	setProperty('scoreTxt.alpha',0)
	setProperty('iconP1.alpha',0)
	setProperty('iconP2.alpha',0)
	setProperty('healthBarP1.alpha',0)
	setProperty('healthBar.alpha',0)
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
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
--fix black spots overlaysX
--fix meangus overlayX
--fix meangus sizeX
--fix jorsawsee and yellowX
--fix ending cameraX
--add preloading in susogus
--add credits
--fix sizesX
--add flashes
--add speed changes