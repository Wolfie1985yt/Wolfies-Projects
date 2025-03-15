function onEvent(name, value1, value2)
	if name == 'bgpreloadFINAL' then
    		makeLuaSprite('TooSlowBG','BGSky',-800,-550)
    		scaleObject('TooSlowBG',1.305,1.305)
    		setScrollFactor('TooSlowBG',0.9,0.9)

    		makeLuaSprite('TooSlowTrees','TreesFG',-880,-250)
    		scaleObject('TooSlowTrees',1.35,1.35)
    		makeLuaSprite('TooSlowTreesFront','TreesFront',-650,-300)
    		setScrollFactor('TooSlowTreesFront',1.1,1)

    		makeLuaSprite('TooSlowTreesLeft','TreesLeft',-850,-350)
    		setScrollFactor('TooSlowTreesLeft',0.95,0.95)
    		scaleObject('TooSlowTreesLeft',1.25,1.25)

    		makeLuaSprite('TooSlowTreesMid','TreesMid',-850,-550)
    		setScrollFactor('TooSlowTreesMid',0.9,0.9)
    		scaleObject('TooSlowTreesMid',1.25,1.25)
    
    		makeLuaSprite('TooSlowTreesMidBack','TreesMidBack',-850,-550)
    		setScrollFactor('TooSlowTreesMidBack',0.85,0.95)
    		scaleObject('TooSlowTreesMidBack',1.25,1.25)
	
    		makeLuaSprite('TooSlowTreesRight','TreesRight',-650,-350)
    		setScrollFactor('TooSlowTreesRight',0.95,0.95)
    		scaleObject('TooSlowTreesRight',1.25,1.25)

    		makeLuaSprite('TooSlowTreesFront','TreesFront',-650,-300)
    		setScrollFactor('TooSlowTreesFront',1.1,1)

    		makeLuaSprite('TooSlowGroundBG','OuterBush',-1000,-400)
    		scaleObject('TooSlowGroundBG',1.45,1.45)
    
    		makeLuaSprite('TooSlowGround','Grass',-1000,-350)
    		scaleObject('TooSlowGround',1.405,1.405)

    		makeLuaSprite('TooSlowKnux','DeadKnux',-1050,-400)
    		scaleObject('TooSlowKnux',1.405,1.405)

    		makeLuaSprite('TooSlowEgg','DeadEgg',-950,-400)
    		scaleObject('TooSlowEgg',1.405,1.405)

    		makeLuaSprite('TooSlowTopOverlay','OuterBushUp',-920,-400)
    		setScrollFactor('TooSlowTopOverlay',1.1,1.1)
    		scaleObject('TooSlowTopOverlay',1.45,1.45)

    		addLuaSprite('TooSlowBG')
    		addLuaSprite('TooSlowTreesMidBack')

            	makeLuaSprite('TooSlowTreesOuterMid1','TreesOuterMid1',-850,-550)
            	setScrollFactor('TooSlowTreesOuterMid1',0.85,0.95)
            	scaleObject('TooSlowTreesOuterMid1',1.25,1.25)
            	addLuaSprite('TooSlowTreesOuterMid1')

            	makeLuaSprite('TooSlowTreesOuterMid2','TreesOuterMid2',-850,-550)
            	setScrollFactor('TooSlowTreesOuterMid2',0.85,0.95)
            	scaleObject('TooSlowTreesOuterMid2',1.25,1.25)
            	addLuaSprite('TooSlowTreesOuterMid2')

    		addLuaSprite('TooSlowTreesMid2')
    		addLuaSprite('TooSlowTreesMid1')
    		addLuaSprite('TooSlowTreesLeft')
    		addLuaSprite('TooSlowTreesRight')

    		addLuaSprite('TooSlowGroundBG')
    		addLuaSprite('TooSlowGround')
		
        	makeLuaSprite('TooSlowTail1','DeadTailz1',-950,-350)
        	scaleObject('TooSlowTail1',1.405,1.405)
        	addLuaSprite('TooSlowTail1',false)

        	makeLuaSprite('TooSlowTail2','DeadTailz2',-950,-350)
        	scaleObject('TooSlowTail2',1.405,1.405)
        	addLuaSprite('TooSlowTail2',false)

        	makeLuaSprite('TooSlowTail3','DeadTailz3',-950,-350)
        	scaleObject('TooSlowTail3',1.405,1.405)
        	addLuaSprite('TooSlowTail3',false)
    
    		addLuaSprite('TooSlowTrees',false)
    		addLuaSprite('TooSlowKnux')
    		addLuaSprite('TooSlowEgg')
    		addLuaSprite('TooSlowTressFront')
    		addLuaSprite('TooSlowTopOverlay')

    		makeLuaSprite('FirstEncoreBG','FirstEncoreBG',-600,-500)
      		scaleObject('FirstEncoreBG', 2, 2);

    		makeLuaSprite('FirstEncoreBG2','FirstEncoreBG2',-600,-500)
      		scaleObject('FirstEncoreBG2', 2, 2);

    		addLuaSprite('FirstEncoreBG')
    		addLuaSprite('FirstEncoreBG2',true)



	end
end