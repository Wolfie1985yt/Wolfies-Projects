--Crew Names Here!!!
--IF YOU ARE NOT USING CERTAIN NAME SLOTS, JUST LEAVE THEM BLANK 
	--Example: CodeName1 = ''

	SongName1 = "Panger"

	CoderName1 = ""

	MusicianName1 = "Noichi"

	CharterName1 = ""



--Script Options--

Start = 1 --choose which "STEP" to activate the script on

CreditsExitTimer = 2.5 --How many seconds the script will show before exiting

TweenSpeed = 0.8 --How fast the credits move in/out

Transparency = 0.8 --I wouldn't mess with this, but it changes the transparency of the credits underlay

Font = 'phantom.ttf' --Change the Font here if needed

HorizontalUnderLayOffset = 0  --Moves Underlay if needed (horizontally)
--POSITIVE MOVES LEFT
--NEGATIVE MOVES RIGHT

HorizontalWordsOffset = 0 --Moves the words if needed (horizontally)
--NEGATIVE MOVES LEFT
--POSITIVE MOVES RIGHT

---------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------You probably don't need to edit beyond here-------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------


function onCreate()

	--------THE MF UHHHH UNDERLAY--------

	--MAIN SECTION
	makeLuaSprite('Main', 'CREDITTEXT', -500, 400)
	makeGraphic('Main', 500, 230, '808080')
	setObjectCamera('Main', 'other')
	setProperty('Main.alpha', Transparency - 0.25)
	addLuaSprite('Main', true)
	
	--BorderLeft
	--makeLuaSprite('BorderLeft', 'OUTLINE', 0, 400)
	--makeGraphic('BorderLeft', 10, 230, 'FFFFFF')
	--setObjectCamera('BorderLeft', 'other')
	--setProperty('BorderLeft.alpha', Transparency)
	--addLuaSprite('BorderLeft', true)

	--BorderRight
	makeLuaSprite('BorderRight', 'OUTLINE', -10, 400)
	makeGraphic('BorderRight', 10, 230, 'FFFFFF')
	setObjectCamera('BorderRight', 'other')
	setProperty('BorderRight.alpha', Transparency)
	addLuaSprite('BorderRight', true)

	--BorderAbove
	makeLuaSprite('BorderAbove', 'OUTLINE', -500, 400)
	makeGraphic('BorderAbove', 490, 10, 'FFFFFF')
	setObjectCamera('BorderAbove', 'other')
	setProperty('BorderAbove.alpha', Transparency)
	addLuaSprite('BorderAbove', true)

	--BorderBelow
	makeLuaSprite('BorderBelow', 'OUTLINE', -500, 620)
	makeGraphic('BorderBelow', 490, 10, 'FFFFFF')
	setObjectCamera('BorderBelow', 'other')
	setProperty('BorderBelow.alpha', Transparency)
	addLuaSprite('BorderBelow', true)

	-----------------------------------------------------------------------

	--------THE MF UHHHH SUBHEADERS!!--------

	--CREDITS TEXT
	--makeLuaText('CREDITS', 'CREDITS', 1280, HorizontalWordsOffset, -1000)
	--setTextAlignment('CREDITS', 'center')
	--setTextSize('CREDITS', 50)
	--setObjectCamera('CREDITS', 'other')
	--addLuaText('CREDITS')
	--setTextFont('CREDITS', Font)
	
	--CODER TEXT
	--makeLuaText('CODERS', 'CODE/CHARTING', 1280, HorizontalWordsOffset, -1000)
	--setTextAlignment('CODERS', 'center')
	--setTextSize('CODERS', 35)
	--setObjectCamera('CODERS', 'other')
	--addLuaText('CODERS')
	--setTextFont('CODERS', Font)
	
	--MUSIC TEXT
	--makeLuaText('MUSICIANS', 'MUSIC', 1280, HorizontalWordsOffset, -1000)
	--setTextAlignment('MUSICIANS', 'center')
	--setTextSize('MUSICIANS', 35)
	--setObjectCamera('MUSICIANS', 'other')
	--addLuaText('MUSICIANS')
	--setTextFont('MUSICIANS', Font)

	-----------------------------------------------------------------------

	--------SONG--------
		
	--SONG NAME
	makeLuaText('SONG1', SongName1, 1280, -470, 435)
	setTextAlignment('SONG1', 'left')
	setTextSize('SONG1', 50)
	setObjectCamera('SONG1', 'other')
	addLuaText('SONG1')
	setTextFont('SONG1', Font)

	--------CODING CREW--------

	--CODER 1
	makeLuaText('CODER1', CoderName1, 1280, -470, 490)
	setTextAlignment('CODER1', 'center')
	setTextSize('CODER1', 20)
	setObjectCamera('CODER1', 'other')
	addLuaText('CODER1')
	setTextFont('CODER1', Font)
	
	--------MUSIC CREW--------
	
	--MUSICIAN 1
	makeLuaText('MUSICIAN1', MusicianName1, 1280, -470, 515)
	setTextAlignment('MUSICIAN1', 'left')
	setTextSize('MUSICIAN1', 35)
	setObjectCamera('MUSICIAN1', 'other')
	addLuaText('MUSICIAN1') 
	setTextFont('MUSICIAN1', Font)
	
	--------CHARTING CREW--------
	
	--CHARTER 1
	makeLuaText('CHARTER1', CharterName1, 1280, -470, 560)
	setTextAlignment('CHARTER1', 'left')
	setTextSize('CHARTER1', 35)
	setObjectCamera('CHARTER1', 'other')
	addLuaText('CHARTER1')
	setTextFont('CHARTER1', Font)

end


--------TIME FOR THE MOVEMENT SHIT BABEY WOOOOOOOO!!!--------

function onSongStart() -- Inst & Vocals start playing, songPosition = 0

	--------UNDERLAY ENTRANCE--------
		
	doTweenX('UNDERLAY1', 'Main', 0, TweenSpeed, 'QuadOut')
	doTweenX('UNDERLAY2', 'BorderLeft', 0, TweenSpeed, 'QuadOut')
	doTweenX('UNDERLAY3', 'BorderRight', 490, TweenSpeed, 'QuadOut')
	doTweenX('UNDERLAY4', 'BorderAbove', 0, TweenSpeed, 'QuadOut')
	doTweenX('UNDERLAY5', 'BorderBelow', 0, TweenSpeed, 'QuadOut')

	--------TEXT ENTRANCE--------
			
	----CREDITS TEXT----
	doTweenX('CREDSTEXT', 'CREDITS', 30, TweenSpeed, 'QuadOut')

	----CODERS TEXT----
	doTweenX('CODETEXT', 'CODERS', 30, TweenSpeed, 'QuadOut')
	doTweenX('CODER1', 'CODER1', 30, TweenSpeed, 'QuadOut')

	----SONG TEXT----
	doTweenX('SONG1', 'SONG1', 30, TweenSpeed, 'QuadOut')

	----MUSICIANS TEXT----
	doTweenX('MUSICTEXT', 'MUSICIANS', 30, TweenSpeed, 'QuadOut')
	doTweenX('MUSICIAN1', 'MUSICIAN1', 30, TweenSpeed, 'QuadOut')
			
	----CHARTERS TEXT----
	doTweenX('CHARTEXT', 'CHARTERS', 30, TweenSpeed, 'QuadOut')
	doTweenX('CHARTER1', 'CHARTER1', 30, TweenSpeed, 'QuadOut')

	runTimer('ALL THE FUCKING THINGS', CreditsExitTimer, 1)

end


function onTimerCompleted(tag, loops, loopsLeft)

	if tag == 'ALL THE FUCKING THINGS' then

		--------UNDERLAY EXIT--------
					
		doTweenX('UNDERLAY1EXIT', 'Main', -500, TweenSpeed, 'QuadIn')
		doTweenX('UNDERLAY2EXIT', 'BorderLeft', 0, TweenSpeed, 'QuadIn')
		doTweenX('UNDERLAY3EXIT', 'BorderRight', -10, TweenSpeed, 'QuadIn')
		doTweenX('UNDERLAY4EXIT', 'BorderAbove', -500, TweenSpeed, 'QuadIn')
		doTweenX('UNDERLAY5EXIT', 'BorderBelow', -500, TweenSpeed, 'QuadIn')
					
		--------TEXT EXIT--------
					
		----CREDITS TEXT----
		doTweenX('CREDSTEXTEXIT', 'CREDITS', -470, TweenSpeed, 'QuadIn')

		----CODERS TEXT----
		doTweenX('CODETEXTEXIT', 'CODERS', -470, TweenSpeed, 'QuadIn')
		doTweenX('CODER1EXIT', 'CODER1', -470, TweenSpeed, 'QuadIn')

		----SONG TEXT----
		doTweenX('SONG1EXIT', 'SONG1', -470, TweenSpeed, 'QuadIn')

		----MUSICIANS TEXT----
		doTweenX('MUSICTEXTEXIT', 'MUSICIANS', -470, TweenSpeed, 'QuadIn')
		doTweenX('MUSICIAN1EXIT', 'MUSICIAN1', -470, TweenSpeed, 'QuadIn')

		----CHARTERS TEXT----
		doTweenX('CHARTEXTEXIT', 'CHARTERS', -470, TweenSpeed, 'QuadIn')
		doTweenX('CHARTER1EXIT', 'CHARTER1', -470, TweenSpeed, 'QuadIn')

	end

end
