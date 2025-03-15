function onEvent(name, value1, value2)
    if name == 'LeftScroll' then
noteTweenX('leftmoveleft',4, 92.3, 0.5,'linear');
noteTweenX('leftmoveup',5, 205, 0.5,'linear');
noteTweenX('leftmovedown',6, 315, 0.5,'linear');
noteTweenX('leftmoveright',7, 428, 0.5,'linear');

noteTweenX('badleftmoveright',0, 750, 0.5,'linear');
noteTweenX('badupmoveright',1, 860, 0.5,'linear');
noteTweenX('baddownmoveright',2, 970, 0.5,'linear');
noteTweenX('badrightmoveright',3, 1080, 0.5,'linear');
end
end

