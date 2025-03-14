package debug;

import flixel.FlxG;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.system.System;
import lime.graphics.opengl.GL;
import openfl.display.BitmapData;
import haxe.ds.Map;

/**
 * FPS Counter with accurate VRAM tracking using Paths.cacheBitmap()
 **/
class FPSCounter extends TextField
{
	public var currentFPS(default, null):Int;
	public var memoryMegas(get, never):Float;
	public var vramMegas(get, never):Float;

	@:noCompletion private var times:Array<Float>;

	// VRAM tracking (linked with cacheBitmap logic)
	private static var vramUsage:Float = 0;
	private static var trackedTextures:Map<String, Float> = new Map();

	public function new(x:Float = 10, y:Float = 10, color:Int = 0x000000)
	{
		super();

		this.x = x;
		this.y = y;

		currentFPS = 0;
		selectable = false;
		mouseEnabled = false;
		defaultTextFormat = new TextFormat("_sans", 14, color);
		autoSize = LEFT;
		multiline = true;
		text = "FPS: ";

		times = [];
	}

	var deltaTimeout:Float = 0.0;

	private override function __enterFrame(deltaTime:Float):Void
	{
		final now:Float = haxe.Timer.stamp() * 1000;
		times.push(now);
		while (times[0] < now - 1000) times.shift();
		if (deltaTimeout < 50) {
			deltaTimeout += deltaTime;
			return;
		}

		currentFPS = times.length < FlxG.updateFramerate ? times.length : FlxG.updateFramerate;		
		updateText();
		deltaTimeout = 0.0;
	}

	public dynamic function updateText():Void
	{
		text = 'FPS: ${currentFPS}'
		+ '\nMemory: ${flixel.util.FlxStringUtil.formatBytes(memoryMegas)}'
		+ '\nVRAM: ' + Std.string(Math.round(vramMegas * 100) / 100) + ' MB';

		textColor = 0xFFFFFFFF;
		if (currentFPS < FlxG.drawFramerate * 0.5)
			textColor = 0xFFFF0000;
	}

	inline function get_memoryMegas():Float
		return cpp.vm.Gc.memInfo64(cpp.vm.Gc.MEM_INFO_USAGE);

	inline function get_vramMegas():Float
		return vramUsage / (1024 * 1024);

	// Called when a bitmap is loaded into GPU
	public static function trackVRAM(key:String, bitmap:BitmapData):Void
	{
		if (bitmap == null || trackedTextures.exists(key)) return;

		var bytesPerPixel:Int = 4; // RGBA (usually 4 bytes per pixel)
		var size:Float = bitmap.width * bitmap.height * bytesPerPixel;
		vramUsage += size;
		trackedTextures.set(key, size);
	}

	// Called when an asset is unloaded or replaced
	public static function untrackVRAM(key:String):Void
	{
		if (!trackedTextures.exists(key)) return;

		var size:Float = trackedTextures.get(key);
		vramUsage -= size;
		trackedTextures.remove(key);
	}
}
