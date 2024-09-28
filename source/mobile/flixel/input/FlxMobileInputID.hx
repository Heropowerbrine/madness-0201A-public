package mobile.flixel.input;

import flixel.system.macros.FlxMacroUtil;

/**
 * A high-level list of unique values for mobile input buttons.
 * Maps enum values and strings to unique integer codes
 * @author Karim Akra & Lily(mcagabe19)
 */
@:runtimeValue
enum abstract FlxMobileInputID(Int) from Int to Int
{
	public static var fromStringMap(default, null):Map<String, FlxMobileInputID> = FlxMacroUtil.buildMap("mobile.flixel.input.FlxMobileInputID");
	public static var toStringMap(default, null):Map<FlxMobileInputID, String> = FlxMacroUtil.buildMap("mobile.flixel.input.FlxMobileInputID", true);
	// Nothing & Anything
	var ANY = -2;
	var NONE = -1;
	// Extra Key buttons (actually useless but here as a ref)
	var K1 = 1;
    var K2 = 2;
    var K3 = 3;
    var K4 = 4;
    var K5 = 5;
    var K6 = 6;
    var K7 = 7;
    var K8 = 8;
    var K9 = 9;
    var K10 = 10;
    var K11 = 11;
    var K12 = 12;
    var K13 = 13;
    var K14 = 14;
    var K15 = 15;
    var K16 = 16;
    var K17 = 17;
    var K18 = 18;

	@:from
	public static inline function fromString(s:String)
	{
		s = s.toUpperCase();
		return fromStringMap.exists(s) ? fromStringMap.get(s) : NONE;
	}

	@:to
	public inline function toString():String
	{
		return toStringMap.get(this);
	}
}
