package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsISound") extern class NsISound extends NsISupports
{
	public static inline function createInstance() : NsISound return Components.Constructor("@mozilla.org/sound;1", Components.interfaces.nsISound, "init");
	
	function beep() : Void;
	function init() : Void;
	function play(aURL:NsIURL) : Void;
	function playEventSound(aEventId:ULong) : Void;
	function playSystemSound(soundAlias:AString) : Void;
}
