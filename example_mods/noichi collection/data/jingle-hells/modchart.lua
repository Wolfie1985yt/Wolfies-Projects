function onCreate()
    setProperty('iconP1.flipX',true)
    setProperty('iconP2.flipX',true)
    setProperty('healthBar.flipX',true)
end

function onSongStart()
	for i=0,3 do
		setPropertyFromGroup('opponentStrums', i, 'x', _G['defaultPlayerStrumX'..i])
		setPropertyFromGroup('playerStrums', i, 'x', _G['defaultOpponentStrumX'..i])
	end
end

function onUpdatePost()

	--big thanks to user Unholywanderer04 on gamebanana for the flip healthbar script!
	
    P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)

    P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)

    setProperty('iconP1.x',P1Mult - 110)

    setProperty('iconP1.origin.x',240)

    setProperty('iconP2.x',P2Mult + 110)

    setProperty('iconP2.origin.x',-100)

end