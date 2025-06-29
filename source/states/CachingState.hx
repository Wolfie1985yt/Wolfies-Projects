package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;
import flixel.text.FlxText;
import flixel.ui.FlxBar;
import flixel.util.FlxTimer;
import flixel.FlxSprite;
import openfl.utils.Assets;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup;
import flixel.FlxCamera;
import flixel.system.FlxSound;
import flixel.util.FlxColor;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import flixel.system.ui.FlxSoundTray;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.display.FlxGridOverlay;
import backend.Controls;
import lime.app.Application;
import flash.text.TextField;

import states.MainMenuState;

#if sys
import sys.FileSystem;
import sys.io.File;
#end

using StringTools;

class CachingState extends FlxState {
    private var assets:Array<Array<String>> = [
        ["characters/Devoid/devoid", "preload"],
        ["characters/Devoid/devoid_encore", "preload"],
        ["characters/LordX/Judgement/lord", "preload"],
        ["characters/LordX/Judgement/lordx-low-quality", "preload"],
        ["characters/LordX/HellBentX", "preload"],
        ["characters/LordX/LordMortis", "preload"],
        ["characters/LordX/lordxEncore", "preload"],
        ["characters/LordX/lorx", "preload"],
        ["characters/LordX/mydarklord", "preload"],
        ["characters/LordX/mylord", "preload"],
        ["characters/LordX/redglove", "preload"],
        ["characters/LordX/SONIC_X", "preload"],
        ["characters/LordX/XNEW", "preload"]

    ];
    var fileList:Array<String> = [];
    var libsList:Array<String> = [];

    public static var instance:CachingState;
    private var camGame:FlxCamera;
    var debugKeys:Array<FlxKey>;
    public static var closedStat:Bool = false;

    public var voices:FlxSound;
    public var inst:FlxSound;

    private var loadedAssets:Int = 0;
    private var progressBar:FlxBar;
    private var progressText:FlxText;

    override public function create():Void {
        persistentUpdate = persistentDraw = true;

        super.create();
    
        var filesPushed:Array<String> = [];
        var songsPushed:Array<String> = [];
        var foldersToCheck:Array<String> = ["assets/shared/images/sprits"];
        var filesToPush:Array<Array<String>> = [
            ["scorched", "preload", ".png"],
            ["Transition/head", "preload", ".png"],
            ["Transition/shit", "preload", ".png"]
        ];
        var excludedFolders:Array<String> = ["assets/shared/images/achievements", "assets/shared/images/dialogue", "assets/shared/images/menubackgrounds", "assets/shared/images/menudifficulties", "assets/shared/images/noteColorMenu",];
        while (foldersToCheck.length > 0) {
            var folder:String = foldersToCheck.pop();
            trace("Checking folder: " + folder);
            if (FileSystem.exists(folder)) {
                for (file in FileSystem.readDirectory(folder)) {
                    var fullPath:String = folder + "/" + file;
                    var libType:String = '';
                    Paths.dumpExclusions.push(fullPath);
                    // Check if the fullPath is a directory.
                    if (FileSystem.isDirectory(fullPath)) {
                        // Check against the excludedFolders list.
                        var skipFolder:Bool = false;
                        for (excluded in excludedFolders) {
                            // If the folder path starts with an excluded folder, skip it.
                            if (fullPath.indexOf(excluded) == 0) {
                                skipFolder = true;
                                break;
                            }
                        }
                        if (!skipFolder) {
                            foldersToCheck.push(fullPath);
                        } else {
                            trace("Skipping folder: " + fullPath);
                        }
                    } else if (file.endsWith(".png") && !filesPushed.contains(fullPath)) {
                        // Create the relative path by stripping the prefix.
                        var relativePath:String = fullPath;
                        var prefix:String = "";
                        if (relativePath.indexOf("assets/images/") == 0) {
                            prefix = "assets/images/";
                            relativePath = relativePath.substr(prefix.length);
                            libType = "preload";
                        } else if (relativePath.indexOf("mods/") == 0) {
                            prefix = "mods/";
                            relativePath = relativePath.substr(prefix.length);
                            libType = "mods";
                        }
                        // Remove the .png extension (".png" has 4 characters)
                        if (relativePath.endsWith(".png")) {
                            relativePath = relativePath.substr(0, relativePath.length - 4);
                        }
                        fileList.push(relativePath);
                        libsList.push(libType);
                        filesPushed.push(fullPath);
                        trace("Found PNG: " + relativePath + " " + libType);
                    } else if (file.endsWith(".ogg") && !filesPushed.contains(fullPath)) {
                        // Create the relative path by stripping the prefix.
                        trace("Processing OGG file");
                        var relativePath:String = fullPath;
                        var prefix:String = "assets/songs/";
                        if (relativePath.indexOf(prefix) == 0) {
                            relativePath = relativePath.substr(prefix.length);
                            libType = "songs";
                        }
                        // Remove the .ogg extension (".ogg" has 4 characters)
                        if (relativePath.endsWith(".ogg")) {
                            relativePath = relativePath.substr(0, relativePath.length - 4);
                        }
                        fileList.push(relativePath);
                        libsList.push(libType);
                        filesPushed.push(fullPath);
                        trace("Found OGG: " + relativePath);
                    }
                }
            } else {
                trace("Folder does not exist: " + folder);
            }
        }

        for (i in 0...filesToPush.length) {
            fileList.push(filesToPush[i][0]);
            filesPushed.push(filesToPush[i][0]);

            Paths.dumpExclusions.push(filesToPush[i][1] + "/images/" + filesToPush[i][0]);

            libsList.push(filesToPush[i][1]);
        }
        trace(Paths.dumpExclusions);
        
        var bg:FlxSprite = new FlxSprite(0, 0).makeGraphic(FlxG.width, FlxG.height, 0xFF222222);
        add(bg);
        
        progressText = new FlxText(FlxG.width / 2 - 50, FlxG.height / 2 + 30, 200, "Loading 0 / " + fileList.length);
        progressText.setFormat(null, 16, 0xFFFFFFFF, "center");
        add(progressText);
        
        new FlxTimer().start(0.5, function(_) {
            loadNextAsset();
        });
    }

    private function loadNextAsset():Void {
        if (loadedAssets < fileList.length) {
            if (libsList[loadedAssets] != 'songs') {
                var newthing:FlxSprite;
                if (libsList[loadedAssets] != "")
                    newthing = new FlxSprite(0,0).loadGraphic(Paths.image(fileList[loadedAssets], libsList[loadedAssets]));
                else
                    newthing = new FlxSprite(0,0).loadGraphic(Paths.image(fileList[loadedAssets]));
                newthing.alpha = 0.00000001;
                newthing.screenCenter();
                add(newthing);
                remove(newthing);
            } else if (libsList[loadedAssets] == 'songs') {
                // Instead of using PlayState.SONG.song, use fileList[loadedAssets]
                var songName = fileList[loadedAssets];
                if (songName.endsWith("/Voices")) {
                    songName = songName.substr(0, songName.length - 7);
                    voices = new FlxSound().loadEmbedded(Paths.voices(songName));
                    FlxG.sound.list.add(voices);
                    voices.volume = 0;
                    voices.stop();
                } else if (songName.endsWith("/Inst")) {
                    songName = songName.substr(0, songName.length - 5);
                    inst = new FlxSound().loadEmbedded(Paths.inst(songName));
                    FlxG.sound.list.add(inst);
                    inst.volume = 0;
                    inst.stop();
                }
            }
            loadedAssets++;
            progressText.text = "Loading " + loadedAssets + " / " + fileList.length;
            new FlxTimer().start(0.000000000001, function(_) {
                loadNextAsset();
            });
        } else {
            FlxG.switchState(new MainMenuState());
        }
    }
}
