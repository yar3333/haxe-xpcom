package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIStandardURL") extern class NsIStandardURL extends NsIMutable
{
	public static inline function createInstance() : NsIStandardURL return Components.Constructor("@mozilla.org/network/standard-url;1", Components.interfaces.nsIStandardURL);
	
	/**
	 * Control whether or not this URL can be modified. Protocol handlers can set this flag before handing out an URL to ensure that it is not inadvertently modified. Obsolete since Gecko 1.9
	 */
	var mutable : Bool;
	
	function init(aUrlType:ULong, aDefaultPort:Long, aSpec:AUTF8String, aOriginCharset:String, aBaseURI:NsIURI) : Void;
}
