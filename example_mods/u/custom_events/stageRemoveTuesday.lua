
function onEvent(name,v1,v2)
	if name == 'stageRemoveTuesday' then
		makeLuaSprite('space', 'stages/tuesday/space', -402, -130);

		makeLuaSprite('tuesday', 'stages/tuesday/tuesday', -422, -167);
	end
end