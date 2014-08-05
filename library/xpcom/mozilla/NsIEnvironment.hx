package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIEnvironment") extern class NsIEnvironment extends NsISupports
{
	public static inline function getService() : NsIEnvironment return Components.classes[cast "@mozilla.org/process/environment;1"].getService(Components.interfaces.nsIEnvironment);
}
