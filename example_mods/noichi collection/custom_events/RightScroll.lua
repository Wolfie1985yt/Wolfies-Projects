function onEvent(name, value1, value2)
    if name == 'RightScroll' then
noteTweenX('leftmoveright',4, 750, 0.5,'linear');
noteTweenX('upmoveright',5, 860, 0.5,'linear');
noteTweenX('downmoveright',6, 970, 0.5,'linear');
noteTweenX('rightmoveright',7, 1080, 0.5,'linear');

noteTweenX('badleftmoveleft',0, 92.3, 0.5,'linear');
noteTweenX('badleftmoveup',1, 205, 0.5,'linear');
noteTweenX('badleftmovedown',2, 315, 0.5,'linear');
noteTweenX('badleftmoveright',3, 428, 0.5,'linear');
end
end

