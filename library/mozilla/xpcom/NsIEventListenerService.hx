package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIEventListenerService") extern class NsIEventListenerService extends NsISupports
{
	/**
	 * Returns system event group. Read only.  Obsolete since Gecko 7.0
	 */
	var systemEventGroup : NsIDOMEventGroup;
}
