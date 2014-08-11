package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleProvider") extern class NsIAccessibleProvider extends NsISupports
{
	/**
	 * Do not create an accessible for this object This is useful if an ancestor binding already implements nsIAccessibleProvider, but no accessible is desired for the inheriting binding.
	 */
	static inline var NoAccessible = 0;
	/**
	 * For elements that spawn a new document. For example now it is used by <xul:iframe>, <xul:browser> and <xul:editor>.
	 */
	static inline var OuterDoc = 0x00000001;
	
	/**
	 * Read only. Obsolete since Gecko 1.9
	 */
	var accessible : NsIAccessible;
	/**
	 * Value representing the type of accessible object. See constants for details. Read only.
	 */
	var accessibleType : Long;
}
