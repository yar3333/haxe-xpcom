package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXmlRpcFault") extern class NsIXmlRpcFault extends NsISupports
{
	/**
	 * Read only.
	 */
	var faultCode : PRInt32;
	/**
	 * Read only.
	 */
	var faultString : String;
}
