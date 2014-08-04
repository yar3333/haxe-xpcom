package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIXmlRpcFault") extern class NsIXmlRpcFault
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
