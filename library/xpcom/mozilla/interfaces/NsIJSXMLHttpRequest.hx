package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIJSXMLHttpRequest") extern class NsIJSXMLHttpRequest extends NsISupports
{
	/**
	 * A mechanism for setting an upload progress event listener. This event listener may be called multiple times during the upload.
	 */
	var onuploadprogress : NsIDOMEventListener;
}
