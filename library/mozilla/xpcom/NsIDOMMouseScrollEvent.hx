package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMMouseScrollEvent") extern class NsIDOMMouseScrollEvent extends NsIDOMMouseEvent
{
	/**
	 * Indicates which mouse wheel axis changed; this will be either HORIZONTAL_AXIS or VERTICAL_AXIS. Read only.
	 */
	var axis : Long;
}
