package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIXMLHttpRequestUpload") extern class NsIXMLHttpRequestUpload extends NsIDOMEventTarget
{
	var onabort : NsIDOMEventListener;
	var onerror : NsIDOMEventListener;
	var onload : NsIDOMEventListener;
	var onloadstart : NsIDOMEventListener;
	var onprogress : NsIDOMEventListener;
}
