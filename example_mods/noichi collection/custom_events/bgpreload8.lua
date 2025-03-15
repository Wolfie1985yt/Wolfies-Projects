function onEvent(name, value1, value2)
	if name == 'bgpreload8' then
    	
			makeLuaSprite('cyclesSky','Xsky',-210,-350)
			addLuaSprite('cyclesSky')
    		setProperty('cyclesSky.alpha',0.5)
    		scaleObject('cyclesSky',0.5,0.5)
    		setScrollFactor('cyclesSky',0.9,0.9)

    		makeLuaSprite('cyclesMontain','Xhills1',-200,-350)
    		scaleObject('cyclesMontain',0.55,0.55)
    		addLuaSprite('cyclesMontain')
    		setScrollFactor('cyclesMontain',0.95,0.95)

    		makeLuaSprite('cyclesGround','Xfloor',-330,-340)
    		scaleObject('cyclesGround',0.55,0.55)
    		addLuaSprite('cyclesGround')

    		makeAnimatedLuaSprite('cyclesNotKnux','NotKnuckles_Assets',300,-300)
    		addAnimationByPrefix('cyclesNotKnux','hands','Notknuckles',24,true)
    		scaleObject('cyclesNotKnux',0.55,0.55)
    		addLuaSprite('cyclesNotKnux')

        	makeAnimatedLuaSprite('cyclesTree2','WeirdAssFlower_Assets',-250,-130)
        	addAnimationByPrefix('cyclesTree2','tree','flower',24,true)
        	scaleObject('cyclesTree2',0.8,0.8)
        	addLuaSprite('cyclesTree2')

        	makeLuaSprite('cyclesPlant','Xsmallflower',-535,-390)
        	scaleObject('cyclesPlant',0.6,0.6)
        	addLuaSprite('cyclesPlant')

        	makeLuaSprite('cyclesPlant2','Xsmallflower2',-535,-390)
        	scaleObject('cyclesPlant2',0.6,0.6)
        	addLuaSprite('cyclesPlant2')
        
        	makeLuaSprite('cyclesTree1','Xtree',-350,-550)
        	scaleObject('cyclesTree1',0.65,0.65)
        	addLuaSprite('cyclesTree1')

        	setProperty('BlackvignetteCycles.visible', false)
			
			makeAnimatedLuaSprite('domain2', 'domain2', -300,-800);
      		scaleObject('domain2', 5.7,5.7);
      		setProperty('domain2.antialiasing', false);
      		addLuaSprite('domain2', false);
      		addAnimationByPrefix('domain2', 'idle', 'idle',14, true)

	end
end