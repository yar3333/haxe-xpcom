package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIEnvironment") extern class NsIEnvironment extends NsISupports
{
	public static inline function getService() : NsIEnvironment
	{
		return xpcom.Components.classes[cast "@mozilla.org/process/environment;1"].getService(NsIEnvironment);
	}
	
	function set(aName:AString, aValue:AString) : Void;
	function get(aName:AString) : AString;
	function exists(aName:AString) : Bool;
}
