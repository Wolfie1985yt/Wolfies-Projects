import Main;
import openfl.display.Sprite;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.Lib;
import openfl.events.Event;
import flixel.math.FlxMath;
import openfl.system.System;

var useFps = Main.fpsVar.visible;
Main.fpsVar.visible = false;

var updateFpsText = true;
setVar('updateFpsText', updateFpsText);

var fpsSprite = new Sprite();
var fpsText = null;

var currentTime = 0;
var delta = 0;
var lastTime = 0;
var fpsCount = [];
var currentCount = 0;
var cacheCount = 0;
var fps = 0;
var memory = 0;
var maxMem = 0;

var uhmUrPcIsDying = false;

if (useFps) {

  // set text as new fps if useFps . . .
  fpsText = new TextField();
  fpsText.defaultTextFormat = new TextFormat('_sans', 14);
  fpsText.width = FlxG.width;
  fpsText.textColor = 0xffffffff;
  fpsText.x = 10;
  fpsText.y = 2.5;
  game.add(fpsText);
  game.modchartTexts.set('fpsText', fpsText);

  // . . . then remove main fps stuff and add the new one
  Main.fpsVar.parent.removeChild(Main.fpsVar);
  fpsSprite.addChild(fpsText);
  FlxG.stage.addChild(fpsSprite);

}

function update(event:Event) {

  // main elapsed/delta/dt logic
  currentTime = Lib.getTimer();
  delta = (currentTime - lastTime) / 1000;
  lastTime = currentTime;

  // framerate and memory logic
  fpsCount.push(lastTime);
  while (fpsCount[0] < lastTime - 1000) {fpsCount.shift();}
  currentCount = fpsCount.length;
  fps = Math.ceil((currentCount + cacheCount) / 2);
  cacheCount = currentCount;
  memory = Math.abs(FlxMath.roundDecimal(System.totalMemory / 1000000, 1));
  if (memory > maxMem) {maxMem = memory;}

  // if useFps, update the fps text and its color
  if (useFps) {
    fpsText.text = 'FPS: ' + fps + '\nMemory: ' + memory + ' MB / ' + maxMem + ' MB';
    uhmUrPcIsDying = fps < ClientPrefs.data.framerate / 2 || memory > 3000;
    fpsText.textColor = uhmUrPcIsDying ? 0xffff0000 : 0xffffffff;
  }

  // call update function!!!
  game.callOnScripts('onUpdateEvent', [delta, fps, memory, maxMem]);

}

// add new update func!!!
FlxG.stage.addEventListener('enterFrame', update);

// set stuff back
function onDestroy() {
  FlxG.stage.removeEventListener('enterFrame', update);
  if (useFps) {
    FlxG.stage.removeChild(fpsSprite);
    FlxG.stage.addChild(Main.fpsVar);
  }
  Main.fpsVar.visible = true;
}