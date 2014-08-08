package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISound") extern class NsISound extends NsISupports
{
	public static inline function createInstance() : NsISound return xpcom.Components.Constructor("@mozilla.org/sound;1", xpcom.Components.interfaces.nsISound, "init");
	
	function beep() : Void;
	function init() : Void;
	function play(aURL:NsIURL) : Void;
	function playEventSound(aEventId:ULong) : Void;
	function playSystemSound(soundAlias:AString) : Void;
}
