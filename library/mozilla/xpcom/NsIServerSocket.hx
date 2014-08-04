package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIServerSocket") extern class NsIServerSocket
{
	/**
	 * Returns the port of this server socket. Read only.
	 */
	var port : Long;
}
