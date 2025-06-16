function onUpdate(elapsed)
	if dadName == 'fleetway' and not lowQuality then --replace the name for your character name
	  if curStep >= 0 then
  
		songPos = getSongPosition()
  
		local currentBeat = (songPos/1000)*(bpm/60)
  
		doTweenX(dadTweenX, 'dad', 100-50*math.sin((currentBeat*0.25)*math.pi),0.001)
  
	  end
	end
end