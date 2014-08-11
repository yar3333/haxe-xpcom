package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICryptoHash") extern class NsICryptoHash extends NsISupports
{
	/**
	 * Message Digest Algorithm 2
	 */
	static inline var MD2 = 1;
	/**
	 * Message-Digest algorithm 5
	 */
	static inline var MD5 = 2;
	/**
	 * Secure Hash Algorithm 1
	 */
	static inline var SHA1 = 3;
	/**
	 * Secure Hash Algorithm 256
	 */
	static inline var SHA256 = 4;
	/**
	 * Secure Hash Algorithm 384
	 */
	static inline var SHA384 = 5;
	/**
	 * Secure Hash Algorithm 512
	 */
	static inline var SHA512 = 6;
	
	function finish(aASCII:PRBool) : ACString;
	function init(aAlgorithm:ULong) : Void;
	function initWithString(aAlgorithm:ACString) : Void;
	function update(aData:Array<Octet>, aLen:ULong) : Void;
	function updateFromStream(aStream:NsIInputStream, aLen:ULong) : Void;
}
