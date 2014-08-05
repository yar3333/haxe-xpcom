package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAuthModule") extern class NsIAuthModule extends NsISupports
{
	/**
	 * Default behavior.
	 */
	static inline var REQ_DEFAULT = 0;
	
	function getNextToken(aInToken:VoidPtr, aInTokenLength:ULong, aOutToken:VoidPtr, aOutTokenLength:ULong) : Void;
	function init(aServiceName:String, aServiceFlags:ULong, aDomain:Wstring, aUsername:Wstring, aPassword:Wstring) : Void;
	function unwrap(aInToken:VoidPtr, aInTokenLength:ULong, aOutToken:VoidPtr, aOutTokenLength:ULong) : Void;
	function wrap(aInToken:VoidPtr, aInTokenLength:ULong, confidential:Bool, aOutToken:VoidPtr, aOutTokenLength:ULong) : Void;
}
