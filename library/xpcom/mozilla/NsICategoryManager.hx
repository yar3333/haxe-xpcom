package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsICategoryManager") extern class NsICategoryManager extends NsISupports
{
	public static inline function getService() : NsICategoryManager return Components.classes[cast "@mozilla.org/categorymanager;1"].getService(Components.interfaces.nsICategoryManager);
}
