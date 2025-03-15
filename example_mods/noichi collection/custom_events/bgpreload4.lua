function onEvent(name, value1, value2)
	if name == 'bgpreload4' then
		makeLuaSprite('dead', 'dead', -900, -350);
		scaleObject('dead', 1.2, 1.2);
		addLuaSprite('dead', false);

		makeLuaSprite('motainsdaead', 'motainsdaead', -850, -50);
		scaleObject('motainsdaead', 1.2, 1.2);
		addLuaSprite('motainsdaead', false);

		makeAnimatedLuaSprite('DEADWaterfalls', 'DEADWaterfalls', -1030, 150);
		addAnimationByPrefix('DEADWaterfalls', 'DEADWaterfalls', 'British', 14, true);
		scaleObject('DEADWaterfalls', 0.9, 0.9);
		addLuaSprite('DEADWaterfalls', false);

		makeAnimatedLuaSprite('DEADHills', 'DEADHills', -500, 150);
		addAnimationByPrefix('DEADHills', 'DEADHills', 'DumbassMF', 14, true);
		scaleObject('DEADHills', 1, 1);
		addLuaSprite('DEADHills', false);

		makeLuaSprite('deadtrees', 'deadtrees', -570, -100);
		scaleObject('deadtrees', 1, 1);
		addLuaSprite('deadtrees', false);
	
		makeLuaSprite('DEADfloor', 'DEADfloor', -800, 700);
		scaleObject('DEADfloor', 1.2, 1.2);
		addLuaSprite('DEADfloor', false);

		makeLuaSprite('deadrocks', 'deadrocks', -680, 575);
		scaleObject('deadrocks', 1, 1);
		addLuaSprite('deadrocks', false);
		
		makeLuaSprite('hogbg', 'hogbg', -900, -350);
		scaleObject('hogbg', 1.2, 1.2);
		addLuaSprite('hogbg', false);

		makeLuaSprite('hogmotains', 'hogmotains', -850, -50);
		scaleObject('hogmotains', 1.2, 1.2);
		addLuaSprite('hogmotains', false);

		makeAnimatedLuaSprite('hogWaterfalls', 'hogWaterfalls', -1030, 150);
		addAnimationByPrefix('hogWaterfalls', 'hogWaterfalls', 'British', 14, true);
		scaleObject('hogWaterfalls', 0.9, 0.9);
		addLuaSprite('hogWaterfalls', false);

		makeAnimatedLuaSprite('hogHillsandHills', 'hogHillsandHills', -500, 150);
		addAnimationByPrefix('hogHillsandHills', 'hogHillsandHills', 'DumbassMF', 14, true);
		scaleObject('hogHillsandHills', 1, 1);
		addLuaSprite('hogHillsandHills', false);

		makeLuaSprite('hogtrees', 'hogtrees', -570, -100);
		scaleObject('hogtrees', 1, 1);
		addLuaSprite('hogtrees', false);
	
		makeLuaSprite('hogfloor', 'hogfloor', -800, 700);
		scaleObject('hogfloor', 1.2, 1.2);
		addLuaSprite('hogfloor', false);

		makeLuaSprite('hogrocks', 'hogrocks', -680, 575);
		scaleObject('hogrocks', 1, 1);

    		makeLuaSprite('sky','fakerBGsky',-400,-200)
    		setLuaSpriteScrollFactor('sky',0.7,0.7)
    		scaleObject('sky',0.8,0.8)
    		addLuaSprite('sky',false)

    		makeLuaSprite('mountain','fakerBGmountains',-350,-200)
    		setLuaSpriteScrollFactor('mountain',0.8,0.8)
    		scaleObject('mountain',0.8,0.8)
    		addLuaSprite('mountain',false)

    		makeLuaSprite('ground','fakerBGgrass',-700,-550)
    		setLuaSpriteScrollFactor('ground',1,1)
    		scaleObject('ground',1,1.1)
    		addLuaSprite('ground',false)

    		makeLuaSprite('plant','plant',-700,-450)
    		setLuaSpriteScrollFactor('plant',1,1)
    		scaleObject('plant',1,1)
    		addLuaSprite('plant',false)

    		makeLuaSprite('tree2','tree2',-700,-400)
    		setLuaSpriteScrollFactor('tree2',1,1)
    		scaleObject('tree2',1,1)
    		addLuaSprite('tree2',false)

    		makeLuaSprite('tree1','tree1',-700,-400)
    		setLuaSpriteScrollFactor('tree1',1,1)
    		scaleObject('tree1',1,1)
    		addLuaSprite('tree1',false)

    		makeLuaSprite('pillar','pillar1',-700,-400)
    		setLuaSpriteScrollFactor('pillar',1,1)
    		scaleObject('pillar',1,1)
    		addLuaSprite('pillar',false)

    		makeLuaSprite('pillar2','pillar2',-700,-400)
    		setLuaSpriteScrollFactor('pillar2',1,1)
    		scaleObject('pillar2',1,1)
    		addLuaSprite('pillar2',false)

    		makeLuaSprite('pillar','pillar1',-700,-400)
    		setLuaSpriteScrollFactor('pillar',1,1)
    		scaleObject('pillar',1,1)
    		addLuaSprite('pillar',false)

    		makeLuaSprite('flower','flower1',-600,-400)
    		setLuaSpriteScrollFactor('flower',1,1)
    		scaleObject('flower',1,1)
    		addLuaSprite('flower',false)

    		makeLuaSprite('flower2','flower2',-800,-400)
    		setLuaSpriteScrollFactor('flower2',1,1)
    		scaleObject('flower2',1,1)
    		addLuaSprite('flower2',false)

	end
end