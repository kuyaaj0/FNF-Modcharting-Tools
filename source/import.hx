#if LEATHER
import states.PlayState;
import game.Song;
import game.Section.SwagSection;
import game.Note;
import ui.FlxScrollableDropDownMenu;
import game.Conductor;
import utilities.CoolUtil;
import game.StrumNote;
import utilities.NoteVariables;
import states.LoadingState;
import states.MusicBeatState;
import substates.MusicBeatSubstate;

#elseif (PSYCH && PSYCHVERSION >= "0.7")
// === Psych Engine 0.7 and newer ===
import flixel.addons.ui.FlxUIDropDownMenu;
import backend.Section.SwagSection;
import states.PlayState;
import backend.CoolUtil;
import backend.Conductor;
import backend.ClientPrefs;
import backend.Paths;
import states.LoadingState;
import backend.Difficulty;
#if SCEModchartingTools
import substates.MusicBeatSubstate;
#else
import backend.MusicBeatSubstate;
#end
import objects.Note;
#if SCEModchartingTools
import objects.StrumArrow;
#else
import objects.StrumNote;
#end
import backend.Song;

#elseif PSYCH
// === Psych-based forks (like Novaflare Engine) ===
//import backend.Section.SwagSection; // different path for NF
import backend.Song;
import states.PlayState;
import backend.CoolUtil;
import backend.Conductor;
import backend.ClientPrefs;
import backend.Paths;
import states.LoadingState;
#if SCEModchartingTools
import substates.MusicBeatSubstate;
#else
import backend.MusicBeatSubstate;
#end
import objects.Note;
import objects.StrumNote;

#else
// === Fallback for older engines ===
import Section.SwagSection;
import Song;
import MusicBeatSubstate;
#end


#if (PSYCH && LUA_ALLOWED)
import scripts.lua.FunkinLua;
import scripts.hscript.HScript as FunkinHScript;
#end


#if sys
import sys.FileSystem;
import sys.io.File;
#end

import flixel.FlxSprite;
