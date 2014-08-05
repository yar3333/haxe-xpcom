package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIURIFixup") extern class NsIURIFixup extends NsISupports
{
	public static inline function getService() : NsIURIFixup return Components.classes[cast "@mozilla.org/docshell/urifixup;1"].getService(Components.interfaces.nsIURIFixup);
	
	/**
	 * No fixup flags.
	 */
	static inline var FIXUP_FLAG_NONE = 0;
	/**
	 * Allow the fixup to use a keyword lookup service to complete the URI. The fixup object implementer should honour this flag and only perform any lengthy keyword (or search) operation if it is set.
	 */
	static inline var FIXUP_FLAG_ALLOW_KEYWORD_LOOKUP = 1;
	/**
	 * Tell the fixup to make an alternate URI from the input URI, for example to turn foo into www.foo.com.
	 */
	static inline var FIXUP_FLAGS_MAKE_ALTERNATE_URI = 2;
	/**
	 * Use UTF-8 to encode the URI instead of the platform character set. 
	 */
	static inline var FIXUP_FLAG_USE_UTF8 = 4;
	
	function createExposableURI(aURI:NsIURI) : NsIURI;
	function createFixupURI(aURIText:AUTF8String, aFixupFlags:ULong) : NsIURI;
	function keywordToURI(aKeyword:AUTF8String) : NsIURI;
}
