package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMemoryMultiReporterCallback") extern class NsIMemoryMultiReporterCallback extends NsISupports
{
	function callback(process:ACString, path:AUTF8String, kind:PRInt32, units:PRInt32, amount:PRInt64, description:AUTF8String, closure:NsISupports) : Void;
}
