package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("inIDOMUtils") extern class InIDOMUtils extends NsISupports
{
	public static inline function getService() : InIDOMUtils return Components.classes[cast "@mozilla.org/inspector/dom-utils;1"].getService(Components.interfaces.inIDOMUtils);
}
