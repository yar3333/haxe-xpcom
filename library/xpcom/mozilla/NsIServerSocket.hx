package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIServerSocket") extern class NsIServerSocket extends NsISupports
{
	public static inline function createInstance() : NsIServerSocket return Components.Constructor("@mozilla.org/network/server-socket;1", Components.interfaces.nsIServerSocket);
	
	/**
	 * Returns the port of this server socket. Read only.
	 */
	var port : Long;
}
