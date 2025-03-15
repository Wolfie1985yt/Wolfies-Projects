-- simple script that changes the note color on the opponent's side
-- made by broster (@broster)
function setNoteColorDad(note, color1, color2, color3)
    setPropertyFromGroup('opponentStrums', note, 'rgbShader.r', getColorFromHex(color1))
    setPropertyFromGroup('opponentStrums', note, 'rgbShader.g', getColorFromHex(color2))
    setPropertyFromGroup('opponentStrums', note, 'rgbShader.b', getColorFromHex(color3))
    setPropertyFromGroup('opponentStrums', note, 'rgbShader.enabled', false)

    for i = 0, getProperty('unspawnNotes.length')-1 do
            if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --specifically changes the notes on your side
                if getPropertyFromGroup('unspawnNotes', i, 'noteData') == note then
                    setPropertyFromGroup('unspawnNotes', i, 'rgbShader.r', getColorFromHex(color1))
                    setPropertyFromGroup('unspawnNotes', i, 'rgbShader.g', getColorFromHex(color2))
                    setPropertyFromGroup('unspawnNotes', i, 'rgbShader.b', getColorFromHex(color3))
                end
            end
    end
end

function getColorFromHex(hex)
    if(hex:sub(0,2) == '0x') then hex = hex:sub(3) end
    if(#hex < 6) then hex = 'ff' .. hex end
    return tonumber('0x' .. hex)
end


function onCreatePost()
		--              ID  red       green     blue
	if songName == 'omnipresent-v1' then
		close()
	end
	if songName == 'skyscrapper' then
		setNoteColorDad(0, 'c48e36', 'fdbe58', 'ffca73');
		setNoteColorDad(1, '191f2c', '25314b', '4f5666');
		setNoteColorDad(2, 'c48e36', 'fdbe58', 'ffca73');
		setNoteColorDad(3, '191f2c', '25314b', '4f5666');
	end
	if songName == 'Every generic sonic.exe song remix' then
		setNoteColorDad(0, 'cf50b4', 'eb5bcc', '6d265e');
		setNoteColorDad(1, '5922d0', '290675', '2e0f72');
		setNoteColorDad(2, 'cf50b4', 'eb5bcc', '6d265e');
		setNoteColorDad(3, '5922d0', '290675', '2e0f72');	
	end
	if songName == 'Gamebreaker' then
		setNoteColorDad(0, '0b28bf', '1334e1', '0a1651');
		setNoteColorDad(1, 'dbdbdb', '878787', 'c9c9c9');
		setNoteColorDad(2, '0b28bf', '1334e1', '0a1651');
		setNoteColorDad(3, 'dbdbdb', '878787', 'c9c9c9');		
	end
end

function onEvent(n)
	if n == 'Change Character' then	
		if dadName == 'ohagi_p1' then
			setNoteColorDad(0, 'c48e36', 'fdbe58', 'ffca73');
			setNoteColorDad(1, '191f2c', '25314b', '4f5666');
			setNoteColorDad(2, 'c48e36', 'fdbe58', 'ffca73');
			setNoteColorDad(3, '191f2c', '25314b', '4f5666');
		end
		if dadName == 'ohagi_p2' then
			setNoteColorDad(0, '191f2c', '25314b', '4f5666');
			setNoteColorDad(1, 'c48e36', 'fdbe58', 'ffca73');
			setNoteColorDad(2, '191f2c', '25314b', '4f5666');
			setNoteColorDad(3, 'c48e36', 'fdbe58', 'ffca73');
		end
		if dadName == 'BEAST' then
			setNoteColorDad(0, 'cf50b4', 'eb5bcc', '6d265e');
			setNoteColorDad(1, '5922d0', '290675', '2e0f72');
			setNoteColorDad(2, 'cf50b4', 'eb5bcc', '6d265e');
			setNoteColorDad(3, '5922d0', '290675', '2e0f72');	
		end
		if dadName == 'DX3' then
			setNoteColorDad(0, 'cf50b4', 'eb5bcc', '6d265e');
			setNoteColorDad(1, '831212', 'c20101', '580303');
			setNoteColorDad(2, 'cf50b4', 'eb5bcc', '6d265e');
			setNoteColorDad(3, '831212', 'c20101', '580303');	
		end
		if dadName == 'DX5' then
			setNoteColorDad(0, '0b28bf', '1334e1', '0a1651');
			setNoteColorDad(1, 'e52020', 'ce0000', '910909');
			setNoteColorDad(2, '0b28bf', '1334e1', '0a1651');
			setNoteColorDad(3, 'e52020', 'ce0000', '910909');
		end
		if dadName == 'DX4' then
			setNoteColorDad(0, 'e52020', 'ce0000', '910909');
			setNoteColorDad(1, 'dbdbdb', '878787', 'c9c9c9');
			setNoteColorDad(2, 'e52020', 'ce0000', '910909');
			setNoteColorDad(3, 'dbdbdb', '878787', 'c9c9c9');
		end
	end
end
