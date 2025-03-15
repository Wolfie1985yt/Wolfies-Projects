local charColors = {
  ['bf-perspective-right'] = {{'c24b99', 'c24b99', 'c24b99'},{'00ffff', '00ffff', '00ffff'},{'12fa05', '12fa05', '12fa05'},{'F9393F', 'F9393F', 'F9393F'}},
  ['ohagi_p1'] = {{'c48e36', 'fdbe58', 'ffca73'}, {'191f2c', '25314b', '4f5666'}},
  ['ohagi_p2'] = {{'191f2c', '25314b', '4f5666'},{'c48e36', 'fdbe58', 'ffca73'}},
  ['BEAST'] = {{'cf50b4', 'eb5bcc', '6d265e'},{'5922d0', '290675', '2e0f72'}},
  ['pinkie'] = {{'ffc0e5', 'deabc9', 'ffd6ee'}},
  ['bf-holding-gf'] = {{'00ccff', 'ffffff', '008888'}},
  ['tankman'] = {{'ffffff', 'ffffff', '000000'}},
  ['tankman-player'] = {{'ffffff', 'ffffff', '000000'}},
  ['pico'] = {{'88ff88', 'ddffdd', '008800'}},
  ['pico-player'] = {{'88ff88', 'ddffdd', '008800'}},
  ['spooky'] = {{'dddddd', 'ffffff', '444444'},{'ffdd00', 'ffdd88', '884400'}},
  ['gf'] = {{'ff88dd', 'ffddff', '880000'}},
  ['dad'] = {{'ff88ff', 'ffddff', '884488'}},
  ['mom-car'] = {{'ff8888', 'ffdddd', '880000'}},
  ['mom'] = {{'ff8888', 'ffdddd', '880000'}},
  ['monster'] = {{'ffff88', 'ffff88', '888844'}},
  ['monster-christmas'] = {{'ffff88', 'ffff88', '888844'}},
  ['parents-christmas'] = {{'ff88ff', 'ffddff', '884488'},{'ff8888', 'ffdddd', '880000'}},
  ['Void'] = {{'ffffff', '000000', '000000'}},
}
local notetypeColors = {
  ['Hurt Note'] = {{'000000', '880000', '000000'}},
  ['Glitch'] = {{'FFFFFF', 'FFFFFF', 'FFFFFF'}},
  ['BF Glitch'] = {{'FFFFFF', 'FFFFFF', 'FFFFFF'}},
  ['Sword'] = {{'ffca18', 'e5e2d9', 'ffca18'}}
}
function onGameOver()
	close()
end
function onSongStart()
	if songName == ('Every generic sonic.exe song remix') then
		
	end
end
function onCreatePost()
  luaDebugMode = true

  if charColors[dadName] then
    for i = 0,3 do
      local e = #charColors[dadName]
      local a = (i%e)+1
      local colors = {}
      colors[1] = getColorFromHex(charColors[dadName][a][1])
      colors[2] = getColorFromHex(charColors[dadName][a][2])
      colors[3] = getColorFromHex(charColors[dadName][a][3])
      setColors(i,colors)
    end
  end
  runHaxeCode([[
    for (strum in game.strumLineNotes){
      strum.playAnim('pressed', true);
      strum.resetAnim = 0.15;
    }
  ]])
  runHaxeCode([[game.callOnLuas('addCharColors', ['Blenis',[['fffffff','000000','000000'] ] ])]])
end
function onUpdatePost()
  for i = 0, getProperty('notes.length')-1 do
    local d = getPropertyFromGroup('notes', i, 'noteData')
    if getPropertyFromGroup('notes', i, 'rgbShader.r') == getPropertyFromClass('backend.ClientPrefs', 'data.arrowRGB['..d..'][0]') then
      if getPropertyFromGroup('notes',i,'mustPress') then
        if charColors[dadName] then
          local e = #charColors[dadName]
          local a = (d%e)+1
          setPropertyFromGroup('notes',i,'rgbShader.r',getColorFromHex(charColors[dadName][a][1]))
          setPropertyFromGroup('notes',i,'rgbShader.g',getColorFromHex(charColors[dadName][a][2]))
          setPropertyFromGroup('notes',i,'rgbShader.b',getColorFromHex(charColors[dadName][a][3]))
        end
      end
      if getPropertyFromGroup('notes', i, 'gfNote') and charColors[gfName] then
        local e = #charColors[gfName]
        local a = (d%e)+1
        setPropertyFromGroup('notes',i,'rgbShader.r',getColorFromHex(charColors[gfName][a][1]))
        setPropertyFromGroup('notes',i,'rgbShader.g',getColorFromHex(charColors[gfName][a][2]))
        setPropertyFromGroup('notes',i,'rgbShader.b',getColorFromHex(charColors[gfName][a][3]))
      end
      local nt = getPropertyFromGroup('notes',i,'noteType')
      if notetypeColors[nt] then
        local e = #notetypeColors[nt]
        local a = (d%e)+1
        setPropertyFromGroup('notes',i,'rgbShader.r',getColorFromHex(notetypeColors[nt][a][1]))
        setPropertyFromGroup('notes',i,'rgbShader.g',getColorFromHex(notetypeColors[nt][a][2]))
        setPropertyFromGroup('notes',i,'rgbShader.b',getColorFromHex(notetypeColors[nt][a][3]))
      end
    end
  end
end
function goodNoteHit(i,d)
  local colors = {}
  colors[1] = getPropertyFromGroup('notes',i,'rgbShader.r')
  colors[2] = getPropertyFromGroup('notes',i,'rgbShader.g')
  colors[3] = getPropertyFromGroup('notes',i,'rgbShader.b')
  setColors(d+4,colors)
end
function opponentNoteHit(i,d)
  local colors = {}
  colors[1] = getPropertyFromGroup('notes',i,'rgbShader.r')
  colors[2] = getPropertyFromGroup('notes',i,'rgbShader.g')
  colors[3] = getPropertyFromGroup('notes',i,'rgbShader.b')
  setColors(d,colors)
end
function noteMiss(i,d)
  if getPropertyFromGroup('notes',i,'hitCausesMiss') then
    local colors = {}
    colors[1] = getPropertyFromGroup('notes',i,'rgbShader.r')
    colors[2] = getPropertyFromGroup('notes',i,'rgbShader.g')
    colors[3] = getPropertyFromGroup('notes',i,'rgbShader.b')
    setColors(d+4,colors)
  end
end
function setColors(d,colors)
  setPropertyFromGroup('strumLineNotes',d,'rgbShader.r', colors[1])
  setPropertyFromGroup('strumLineNotes',d,'rgbShader.g', colors[2])
  setPropertyFromGroup('strumLineNotes',d,'rgbShader.b', colors[3])
end
function addCharColors(char, colors)
  charColors[char] = colors
end
function addNoteColors(t, colors)
  notetypeColors[t] = colors
end