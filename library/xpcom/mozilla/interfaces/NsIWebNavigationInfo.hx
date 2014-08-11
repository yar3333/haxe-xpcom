package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIWebNavigationInfo") extern class NsIWebNavigationInfo extends NsISupports
{
	public static inline function getService() : NsIWebNavigationInfo
	{
		return xpcom.Components.classes[cast "@mozilla.org/webnavigation-info;1"].getService(NsIWebNavigationInfo);
	}
	
	/**
	 * <p>Returned by <code><a href="nsIWebNavigationInfo.html#isTypeSupported()">isTypeSupported()</a></code> to indicate lack of support for a type.</p>
	 * <div class="note"><strong>Note:</strong> This is guaranteed not to change, so that boolean tests can be done on the return value if isTypeSupported to detect whether a type is supported at all.</div>
	 */
	static inline var UNSUPPORTED = 0;
	/**
	 * Returned by <code><a href="nsIWebNavigationInfo.html#isTypeSupported()">isTypeSupported()</a></code> to indicate that a type is supported as an image.
	 */
	static inline var IMAGE = 1;
	/**
	 * Returned by <code><a href="nsIWebNavigationInfo.html#isTypeSupported()">isTypeSupported()</a></code> to indicate that a type is supported via an NPAPI ("Netscape 4 API") plug-in. This is not the value returned for "XPCOM plug-ins".
	 */
	static inline var PLUGIN = 2;
	/**
	 * <p></p><div class="note"><strong>Note:</strong> Other return types may be added here in the future as they become relevant.</div><p></p>
	 * Returned by <code><a href="nsIWebNavigationInfo.html#isTypeSupported()">isTypeSupported()</a></code> to indicate that a type is supported via some other means.
	 */
	static inline var OTHER = 1 << 15;
	
	function isTypeSupported(aType:ACString, aWebNav:NsIWebNavigation) : ULong;
}
