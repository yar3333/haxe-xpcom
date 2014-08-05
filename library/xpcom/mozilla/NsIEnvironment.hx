package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIEnvironment") extern class NsIEnvironment extends NsISupports
{
	public static inline function getService() : NsIEnvironment return Components.classes[cast "@mozilla.org/process/environment;1"].getService(Components.interfaces.nsIEnvironment);
	
	function set(aName:AString, aValue:AString) : Void;
	function get(aName:AString) : AString;
	function exists(aName:AString) : Bool;
}
