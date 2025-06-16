function onUpdate()
if curStep == 2 then
	noteTweenX('leftmoveleft',4, 92.3, 0.2,'linear');
	noteTweenX('leftmoveup',5, 205, 0.2,'linear');
	noteTweenX('leftmovedown',6, 315, 0.2,'linear');
	noteTweenX('leftmoveright',7, 428, 0.2,'linear');
	noteTweenX('badleftmoveright',0, 750, 0.2,'linear');
	noteTweenX('badupmoveright',1, 860, 0.2,'linear');
	noteTweenX('baddownmoveright',2, 970, 0.2,'linear');
	noteTweenX('badrightmoveright',3, 1080, 0.2,'linear');
	noteTweenAlpha('badarrowleftappear', 0, 0.2, 0.1, 'linear');
	noteTweenAlpha('badarrowupappear', 1, 0.2, 0.1, 'linear');
	noteTweenAlpha('badarrowdownappear', 2, 0.2, 0.1, 'linear');
	noteTweenAlpha('badarrowrightappear', 3, 0.2, 0.1, 'linear');
end
end



