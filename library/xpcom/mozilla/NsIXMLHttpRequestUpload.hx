package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXMLHttpRequestUpload") extern class NsIXMLHttpRequestUpload extends NsIDOMEventTarget
{
	var onabort : NsIDOMEventListener;
	var onerror : NsIDOMEventListener;
	var onload : NsIDOMEventListener;
	var onloadstart : NsIDOMEventListener;
	var onprogress : NsIDOMEventListener;
}
