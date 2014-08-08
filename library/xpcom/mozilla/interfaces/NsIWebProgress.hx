package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebProgress") extern class NsIWebProgress extends NsISupports
{
	/**
	 * The DOM window associated with this nsIWebProgress instance. Read only. Exceptions thrown  NS_ERROR_FAILURE Indicates that there is no associated DOM window.
	 */
	var DOMWindow : NsIDOMWindow;
	/**
	 * Indicates whether or not a document is currently being loaded in the context of this nsIWebProgress instance. Read only.
	 */
	var isLoadingDocument : PRBool;
	
	function addProgressListener(aListener:NsIWebProgressListener, aNotifyMask:ULong) : Void;
	function removeProgressListener(aListener:NsIWebProgressListener) : Void;
}
