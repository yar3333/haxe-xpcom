package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIStandardURL") extern class NsIStandardURL extends NsIMutable
{
	public static inline function createInstance(aUrlType:ULong, aDefaultPort:Long, aSpec:AUTF8String, aOriginCharset:String, aBaseURI:NsIURI) : NsIStandardURL
	{
		var r : NsIStandardURL = xpcom.Components.classes[cast "@mozilla.org/network/standard-url;1"].createInstance(NsIStandardURL);
		r.init(aUrlType, aDefaultPort, aSpec, aOriginCharset, aBaseURI);
		return r;
	}
	
	/**
	 * <pre>
	 * blah:foo/bar    => blah://foo/bar
	 * blah:/foo/bar   => blah:///foo/bar
	 * blah://foo/bar  => blah://foo/bar
	 * blah:///foo/bar => blah:///foo/bar</pre>
	 */
	static inline var URLTYPE_STANDARD = 1;
	/**
	 * <pre>
	 * blah:foo/bar    => blah://foo/bar
	 * blah:/foo/bar   => blah://foo/bar
	 * blah://foo/bar  => blah://foo/bar
	 * blah:///foo/bar => blah://foo/bar</pre>
	 */
	static inline var URLTYPE_AUTHORITY = 2;
	/**
	 * <pre>
	 * blah:foo/bar    => blah:///foo/bar
	 * blah:/foo/bar   => blah:///foo/bar
	 * blah://foo/bar  => blah://foo/bar
	 * blah:///foo/bar => blah:///foo/bar</pre>
	 */
	static inline var URLTYPE_NO_AUTHORITY = 3;
	
	/**
	 * Control whether or not this URL can be modified. Protocol handlers can set this flag before handing out an URL to ensure that it is not inadvertently modified. Obsolete since Gecko 1.9
	 */
	var mutable : Bool;
	
	function init(aUrlType:ULong, aDefaultPort:Long, aSpec:AUTF8String, aOriginCharset:String, aBaseURI:NsIURI) : Void;
}
