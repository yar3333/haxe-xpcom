package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISerializable") extern class NsISerializable
{
	/**
	 * Initialize the object implementing nsISerializable, which must have been freshly constructed via CreateInstance.
	 */
	function read(aInputStream:NsIObjectInputStream) : Void;
 	
	/**
	 * Serialize the object implementing nsISerializable to aOutputStream, 
	 * by writing each data member that must be recovered later 
	 * to reconstitute a working replica of this object, 
	 * in a canonical member and byte order, to aOutputStream.
	 */
	function write(aOutputStream:NsIObjectOutputStream) : Void;
}