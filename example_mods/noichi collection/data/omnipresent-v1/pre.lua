function onCreate()
	-- background shit
	precacheImage('xterionsky');
	precacheImage('xterionfloor');
	precacheImage('daSTAT');

	precacheImage('hogbg');
	precacheImage('hogmotains');
	precacheImage('hogWaterfalls');
	precacheImage('hogHillsandHills');
	precacheImage('hogtrees');
	precacheImage('hogfloor');
	precacheImage('hogrocks');

	precacheImage('TrioGlitch');
	precacheImage('TrioBG');
	precacheImage('TrioTTTrees');
	precacheImage('TrioTree');
	precacheImage('TrioTree2');
	precacheImage('TrioGround');

	precacheImage('FirstEncoreBG');

	precacheImage('ChamberWall');
	precacheImage('ChamberFloor');
	precacheImage('FleetwayBGshit');
	precacheImage('pebles');
	precacheImage('Emerald Beam Charged');
	precacheImage('Emeralds');
	precacheImage('The Chamber');

	precacheImage('NewTitleMenuBG');
	precacheImage('XenoBackTrees');
	precacheImage('xenoGrass');
	precacheImage('starvedlight');
	precacheImage('starvedcity');
	precacheImage('starvedtowers');
	precacheImage('starvedstage');
	precacheImage('starvedsonicisfuckingdead');
	precacheImage('domain2');
	precacheImage('stardust speedway bg');
	precacheImage('plataform');

	precacheImage('sonicFUNsky');
	precacheImage('Majin Boppers Back');
	precacheImage('Bush 1');
	precacheImage('Bush2');
	precacheImage('Majin Boppers Front');
	precacheImage('floor BG');
	precacheImage('majin FG2');
	precacheImage('majin FG1');

	precacheImage('Xsky');
	precacheImage('Xhills1');
	precacheImage('Xfloor');
	precacheImage('NotKnuckles_Assets');
	precacheImage('WeirdAssFlower_Assets');
	precacheImage('Xsmallflower');
	precacheImage('Xsmallflower2');
	precacheImage('Xtree');
	precacheImage('black_vignette');

	precacheImage('sky');
	precacheImage('mountains');
	precacheImage('buildings');
	precacheImage('fg');
	precacheImage('ruins');
	precacheImage('CONK_CREET');

	precacheImage('sunky BG');
	precacheImage('ball');
	precacheImage('stage');

	precacheImage('sanicbg');

	precacheImage('cold');

	precacheImage('GFatan');

	precacheImage('motainsdaead');
	precacheImage('DEADWaterfalls');
	precacheImage('dead');
	precacheImage('DEADHills');
	precacheImage('deadtrees');
	precacheImage('DEADfloor');
	precacheImage('deadrocks');

	precacheImage('TrueWechidnaBG');

	precacheImage('BGSky');
	precacheImage('TreesFG');
	precacheImage('TreesLeft');
	precacheImage('TreesMid');
	precacheImage('TreesMidBack');
	precacheImage('TreesRight');
	precacheImage('TreesFront');
	precacheImage('OuterBush');
	precacheImage('Grass');
	precacheImage('DeadKnux');
	precacheImage('DeadEgg');
	precacheImage('OuterBushUp');
	precacheImage('TreesOuterMid1');
	precacheImage('TreesOuterMid2');
	precacheImage('DeadTailz1');
	precacheImage('DeadTailz2');
	precacheImage('DeadTailz3');

	precacheImage('FirstEncoreBG');
	precacheImage('FirstEncoreBG2');
	
	precacheImage('fakerBGsky');
	precacheImage('fakerBGmountains');
	precacheImage('fakerBGgrass');
	precacheImage('tree2');
	precacheImage('tree1');
	precacheImage('pillar1');
	precacheImage('pillar2');
	precacheImage('plant');
	precacheImage('flower1');
	precacheImage('flower2');

	precacheImage('exeBgsky');
	precacheImage('exeBgground');
	precacheImage('exeBgExeAnimatedBG_Assets');
	precacheImage('exeBgTailsCorpse');

	precacheSound('staticBUZZ');
	addCharacterToList('X-terion', 'dad'); 
	addCharacterToList('sega_saturn_bf', 'bf'); 
	addCharacterToList('bf-mirrorOmni', 'bf'); 
	addCharacterToList('tailsdoll', 'dad'); 
	addCharacterToList('FakerEXE', 'dad'); 
	addCharacterToList('hog2', 'dad'); 
	addCharacterToList('bfthreed', 'bf'); 
	addCharacterToList('tails', 'dad'); 
	addCharacterToList('knux', 'dad'); 
	addCharacterToList('eggdickOmni', 'dad'); 
	addCharacterToList('bf-souls', 'bf'); 
	addCharacterToList('requital-whisper', 'dad'); 
	addCharacterToList('bf-whisper', 'bf'); 
	addCharacterToList('fleetway', 'dad'); 
	addCharacterToList('bf-fleetway', 'bf'); 
	addCharacterToList('fleetway', 'dad'); 
	addCharacterToList('bf-hog', 'bf'); 
	addCharacterToList('curse_happy', 'dad'); 
	addCharacterToList('bf-perspective-right', 'bf'); 
	addCharacterToList('BEAST', 'dad'); 
	addCharacterToList('bf-fatal', 'bf'); 
	addCharacterToList('fatal-sonic', 'dad'); 
	addCharacterToList('bf-tails', 'bf'); 
	addCharacterToList('starved', 'dad'); 
	addCharacterToList('bf-running-sonic', 'bf'); 
	addCharacterToList('furnace', 'dad'); 
	addCharacterToList('lordx-encore', 'dad'); 
	addCharacterToList('endless_bfOmni', 'bf'); 
	addCharacterToList('majin', 'dad'); 
	addCharacterToList('majin_new', 'dad');
	addCharacterToList('bf-X', 'bf'); 
	addCharacterToList('Needlemouse', 'dad');
	addCharacterToList('bf-needle', 'bf'); 
	addCharacterToList('sunky', 'dad');
	addCharacterToList('bf-sunkeh', 'bf'); 
	addCharacterToList('sanic', 'dad');
	addCharacterToList('wechidna_true_form', 'dad');
	addCharacterToList('coldsteel', 'dad');
	addCharacterToList('scorched', 'dad');
	addCharacterToList('satanos', 'dad');
	addCharacterToList('bf-encore', 'bf'); 
	addCharacterToList('bf-encoreX', 'bf'); 
	addCharacterToList('sonicexe', 'dad');
	addCharacterToList('faker', 'dad');
end

function onStepHit()
	if curStep == 12128 then
		addLuaScript('scripts/doubleNoteFade')
	end
end