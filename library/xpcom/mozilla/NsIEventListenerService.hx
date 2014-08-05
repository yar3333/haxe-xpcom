package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIEventListenerService") extern class NsIEventListenerService extends NsISupports
{
	public static inline function createInstance() : NsIEventListenerService return Components.Constructor("@mozilla.org/eventlistenerservice;1", Components.interfaces.nsIEventListenerService);
	
	/**
	 * Returns system event group. Read only.  Obsolete since Gecko 7.0
	 */
	var systemEventGroup : NsIDOMEventGroup;
}
