package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAccessibleEditableText") extern class NsIAccessibleEditableText extends NsISupports
{
	/**
	 * Returns an editor associated with the accessible. Read only. Native code only!
	 */
	var associatedEditor : NsIEditor;
}
