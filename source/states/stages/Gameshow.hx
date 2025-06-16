package states.stages;

import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.addons.display.FlxBackdrop;
import objects.VideoSprite as VideoSprite;

class Gameshow extends BaseStage
{
	var its:FlxSprite;
	var t:FlxSprite;
	var v:FlxSprite;
	var time:FlxSprite;
	var stars:FlxBackdrop;
	var logo:FlxSprite;
	var vcr:FlxSprite;
	var guitar:FlxSprite;
	var blackScreen:FlxSprite;
	var soul:FlxSprite;
	var vg:FlxSprite;
	var lightCover:FlxSprite;
	var audience:Array<FlxSprite> = [];
	var ys:Array<Float> = [];
	public var bgVideo:VideoSprite = null;
	public var endVideo:VideoSprite = null;

	override function create() {
		stars = new FlxBackdrop(XY);
		stars.frames = Paths.getSparrowAtlas('stages/gameshow/starbg');
		stars.animation.addByPrefix('idle', 'idle', 20);
		stars.animation.play('idle',true);
		stars.scale.x = 6;
		stars.scale.y = 6;
		stars.antialiasing = false;
		stars.scrollFactor.set(1, 1);
		stars.velocity.set(-250, 250);
		add(stars);

		logo = new FlxSprite(0, 0);
		logo.frames = Paths.getSparrowAtlas('stages/gameshow/tvtime');
		logo.animation.addByPrefix('idle', 'idle', 12);
		logo.animation.play('idle',true);
		logo.scale.set(6, 6);
		logo.blend = ADD;
		logo.scrollFactor.set(1, 1);
		logo.antialiasing = false;
		add(logo);
		logo.screenCenter();
		logo.x += 310;
		logo.y = 380;
		logo.alpha = 0.3;

		bgVideo = new VideoSprite(Paths.video('disco'), false, false, false);
		// bgvideo.pause();
		bgVideo.scrollFactor.set(1, 1);
		bgVideo.flipX = true;
		bgVideo.cameras = [camGame];
		bgVideo.play();
		bgVideo.alpha = 0;
		add(bgVideo);

		guitar = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/gameshow/gt'));
		guitar.antialiasing = false;
		add(guitar);
		guitar.scrollFactor.set(1, 1);
		guitar.screenCenter();
		guitar.x += 325;
		guitar.alpha = 0;

		vcr = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/gameshow/vcrshit'));
		vcr.antialiasing = false;
		add(vcr);
		vcr.scale.set(3, 3);
		vcr.cameras = [camGame];
		vcr.screenCenter();

		game.preloadVideo('tvtime-ending');
		game.preloadVideo('disco');
		endVideo = new VideoSprite(Paths.video('tvtime-ending'), false, false, false);
		// bgvideo.pause();
		endVideo.cameras = [camOther];
		endVideo.play();
		endVideo.pause();
		add(endVideo);
		endVideo.visible = false;
		endVideo.setGraphicSize(960, 720);
		endVideo.screenCenter();
	}

	override function createPost() {
		game.iconP2.visible = game.iconP1.visible = false;

		spawnFans();

		blackScreen = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		blackScreen.alpha = 1;
		blackScreen.scale.set(2, 2);
		blackScreen.screenCenter();
		blackScreen.scrollFactor.set();
		game.addBehindBF(blackScreen);
		blackScreen.cameras = [camOther];
		add(blackScreen);

		soul = new FlxSprite(boyfriend.x+8, boyfriend.y+14).loadGraphic(Paths.image('stages/gameshow/soul'));
		soul.antialiasing = false;
		insert(members.indexOf(game.noteGroup), soul);
		add(soul);
		soul.scale.set(3, 3);
		soul.alpha = 0;

		lightCover = new FlxSprite(0, 0);
		lightCover.frames = Paths.getSparrowAtlas('stages/gameshow/cover');
		lightCover.animation.addByPrefix('0', '0', 20);
		lightCover.animation.addByPrefix('1', '1', 20);
		lightCover.animation.addByPrefix('2', '2', 20);
		lightCover.animation.addByPrefix('3', '3', 20);
		lightCover.animation.play('0',true);
		lightCover.cameras = [camOther];
		lightCover.scale.x = 1.52;
		lightCover.scale.y = 1.52;
		lightCover.screenCenter();
		lightCover.x += 2;
		lightCover.y = 534;
		lightCover.antialiasing = false;
		add(lightCover);
		lightCover.visible = false;

		its = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/gameshow/tvtime-1'));
		its.antialiasing = false;
		add(its);
		its.scale.set(3.5, 3.5);
		its.cameras = [camOther];
		its.screenCenter();
		its.x = 337;
		its.y = 554;
		its.visible = false;

		t = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/gameshow/tvtime-2'));
		t.antialiasing = false;
		add(t);
		t.scale.set(3.5, 3.5);
		t.cameras = [camOther];
		t.screenCenter();
		t.x = 538;
		t.y = 550;
		t.visible = false;

		v = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/gameshow/tvtime-3'));
		v.antialiasing = false;
		add(v);
		v.scale.set(3.5, 3.5);
		v.cameras = [camOther];
		v.screenCenter();
		v.x = 554;
		v.y = 562;
		v.visible = false;

		time = new FlxSprite(0, 0).loadGraphic(Paths.image('stages/gameshow/tvtime-4'));
		time.antialiasing = false;
		add(time);
		time.scale.set(3.5, 3.5);
		time.cameras = [camOther];
		time.screenCenter();
		time.x = 754;
		time.y = 549;
		time.visible = false;

		vg = new FlxSprite(0, 0).loadGraphic(Paths.image('vignettes/big'));
		vg.antialiasing = true;
		vg.color = 0xFF000000;
		vg.setGraphicSize(1280, 960);
		add(vg);
		vg.cameras = [camOther];
		vg.screenCenter();
		vg.alpha = 0;

		boyfriend.setDropColors(0xFF000000, 0, 0, 0, 0, 0, true);
		boyfriend.dropShadowShader.antialiasAmt = 0;
		game.boyfriendUnderlay.alpha = 0;
		game.comboGroup.visible = false;
	}
	var posX:Int = 0;
	var i:Int = 0;
	function spawnFans() {
		while(posX<2500) {
			var fan:FlxSprite = new FlxSprite(100+posX, FlxG.random.int(1150, 1250));
			fan.frames = Paths.getSparrowAtlas('stages/gameshow/fan');
			fan.animation.addByPrefix('idle', 'idle', 5);
			fan.animation.play('idle', true);
			fan.animation.curAnim.curFrame = FlxG.random.int(0, fan.animation.curAnim.numFrames - 1);
			fan.ID = i;
			ys.push(fan.y);
			fan.y += 1000;
			audience.push(fan);
			audience[i].antialiasing = false;
			audience[i].scale.set(6, 6);
			add(audience[i]);
			posX+=FlxG.random.int(100, 300);
			i++;
		}
	}
	override function beatHit() {
		if(curBeat % 2 == 0) {
			soul.scale.set(3, 3);
			FlxTween.tween(soul.scale, {x: 3.5, y: 3.5}, 0.1, {
				ease: FlxEase.linear,
				onComplete: function(twn:FlxTween) {
					FlxTween.tween(soul.scale, {x: 3, y: 3}, 0.3, {ease: FlxEase.smootherStepOut});
				}
			});
		}
	}
	override function stepHit() {
		switch(curStep) {
			case 1:
				FlxTween.tween(camGame, {zoom: 0.61}, 8, {ease: FlxEase.smootherStepInOut});
				FlxTween.tween(blackScreen, {alpha: 0}, 8, {ease: FlxEase.smootherStepInOut});
				bgVideo.videoSprite.x = 300;
				bgVideo.videoSprite.y = 100;
			case 96:
				lightCover.visible = true;
				FlxTween.tween(its.scale, {x: 1.52, y: 1.52}, 0.1, {
					ease: FlxEase.linear,
					onComplete: function(twn:FlxTween) {
						lightCover.animation.play('1',true);
					}
				});
				its.visible = true;
			case 104:
				FlxTween.tween(t.scale, {x: 1.52, y: 1.52}, 0.1, {
					ease: FlxEase.linear,
					onComplete: function(twn:FlxTween) {
						lightCover.animation.play('2',true);
					}
				});
				t.visible = true;
			case 112:
				FlxTween.tween(v.scale, {x: 1.52, y: 1.52}, 0.1, {
					ease: FlxEase.linear,
					onComplete: function(twn:FlxTween) {
						lightCover.animation.play('3',true);
					}
				});
				v.visible = true;
			case 120:
				FlxTween.tween(time.scale, {x: 1.52, y: 1.52}, 0.1, {
					ease: FlxEase.linear,
					onComplete: function(twn:FlxTween) {
						lightCover.destroy();
					}
				});
				time.visible = true;
				for(i in 0...audience.length) {
					FlxTween.tween(audience[i], {y: ys[i]}, 2, {ease: FlxEase.elasticInOut});
				}
			case 128:
				its.destroy();
				t.destroy();
				v.destroy();
				time.destroy();
			case 256:
				FlxTween.tween(bgVideo, {alpha: 1}, 0.42, {ease: FlxEase.linear});
			case 320:
				FlxTween.tween(guitar, {alpha: 1}, 0.42, {
					ease: FlxEase.linear,
					onComplete: function(twn:FlxTween) {
						remove(bgVideo);
						bgVideo.destroy();
					}
				});
			case 384:
				blackScreen.cameras = [camGame];
				FlxTween.tween(game.boyfriendUnderlay, {alpha: 1}, 9, {ease: FlxEase.smootherStepInOut});
				FlxTween.tween(blackScreen, {alpha: 1}, 9, {ease: FlxEase.smootherStepInOut});
				FlxTween.tween(soul, {alpha: 1}, 9, {ease: FlxEase.smootherStepInOut});
				FlxTween.tween(vg, {alpha: 1}, 6, {ease: FlxEase.smootherStepInOut});
				FlxTween.tween(boyfriend.dropShadowShader, {baseBrightness: -60, baseHue: -20, baseContrast: 40}, 14, {ease: FlxEase.smootherStepInOut});
				FlxTween.tween(guitar, {alpha: 0}, 0.42, {
					ease: FlxEase.linear,
					onComplete: function(twn:FlxTween) {
						guitar.destroy();
					}
				});
			case 510:
				endVideo.play();
				endVideo.visible = true;
			case 522:
				endVideo.y -= 100;
				blackScreen.cameras = [game.camVideo];
		}
	}
}