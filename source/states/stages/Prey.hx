package states.stages;

import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.addons.display.FlxBackdrop;
import objects.VideoSprite as VideoSprite;

class Prey extends BaseStage
{
	var starArr:Array<FlxBackdrop> = [];
	var animStar:FlxBackdrop;
	override function create() {
		for(i in 1...29) {
			var stars:FlxBackdrop;
			stars = new FlxBackdrop(Paths.image('prey/layers/layer' + i), X);
			stars.scale.x = 2;
			stars.scale.y = 2;
			stars.antialiasing = false;
			stars.scrollFactor.set(1, 1);
			starArr.push(stars);
			add(starArr[i-1]);
		}

		animStar = new FlxBackdrop(X);
		animStar.frames = Paths.getSparrowAtlas('prey/Prey_Light');
		animStar.animation.addByPrefix('Silent', 'idle', 12);
		animStar.animation.addByPrefix('Active', 'Active', 12, false);
		animStar.animation.play('idle',true);
		animStar.scale.x = 2;
		animStar.scale.y = 2;
		animStar.antialiasing = false;
		animStar.scrollFactor.set(1, 1);
		add(animStar);

		starArr[0].velocity.set(-680);
		starArr[1].velocity.set(-660);
		starArr[2].velocity.set(-640);
		starArr[3].velocity.set(-620);
		starArr[4].velocity.set(-600);
		starArr[5].velocity.set(-580);
		starArr[6].velocity.set(-560);
		starArr[7].velocity.set(-540);
		starArr[8].velocity.set(-520);
		starArr[9].velocity.set(-500);
		starArr[10].velocity.set(-480);
		starArr[11].velocity.set(-460);
		starArr[12].velocity.set(-440);
		starArr[13].velocity.set(-420);
		starArr[14].velocity.set(-400);
		starArr[15].velocity.set(-380);
		animStar.velocity.set(-380);
		starArr[16].velocity.set(-400);
		starArr[17].velocity.set(-420);
		starArr[18].velocity.set(-440);
		starArr[19].velocity.set(-460);
		starArr[20].velocity.set(-480);
		starArr[21].velocity.set(-500);
		starArr[22].velocity.set(-520);
		starArr[23].velocity.set(-540);
		starArr[24].velocity.set(-560);
		starArr[25].velocity.set(-580);
		starArr[26].velocity.set(-600);
		starArr[27].velocity.set(-620);

		lightenninninngg();
	}
	function lightenninninngg() {
		animStar.alpha = 0;
		var num:Int = FlxG.random.int(1,5);
		trace(num);
		if(num == 5) {
			animStar.animation.play('Active',false);
			animStar.alpha = 1;
		}
		new FlxTimer().start(0.4, function(tmr:FlxTimer) {
			if(num == 5)
				FlxG.sound.play(Paths.soundRandom('thunder', 1, 2));

			FlxTween.tween(animStar, {alpha: 0}, 1.2, {
				ease: FlxEase.smootherStepOut,
				onComplete: function(twn:FlxTween) {
					new FlxTimer().start(10, function(tmr:FlxTimer) {
						lightenninninngg();
					});
				}
			});
		});
	}
}