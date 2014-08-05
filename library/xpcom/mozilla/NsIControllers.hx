package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIControllers") extern class NsIControllers extends NsISupports
{
	public static inline function createInstance() : NsIControllers return Components.Constructor("@mozilla.org/xul/xul-controllers;1", Components.interfaces.nsIControllers);
	
	/**
	 * Obsolete since Gecko 1.9
	 */
	var commandDispatcher : NsIDOMXULCommandDispatcher;
}
