package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIConsoleService") extern class NsIConsoleService extends NsISupports
{
	public static inline function getService() : NsIConsoleService return Components.classes[cast "@mozilla.org/consoleservice;1"].getService(Components.interfaces.nsIConsoleService);
}
