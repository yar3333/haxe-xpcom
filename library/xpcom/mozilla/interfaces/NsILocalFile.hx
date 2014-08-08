package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsILocalFile") extern class NsILocalFile extends NsIFile
{
	public static inline function createInstance() : NsILocalFile return Components.Constructor("@mozilla.org/file/local;1", Components.interfaces.nsILocalFile);
	
	/**
	 * Optional parameter used by <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsILocalFile#openNSPRFileDesc()">openNSPRFileDesc()</a></code>. 
	 */
	static inline var DELETE_ON_CLOSE = 0x80000000;
}
