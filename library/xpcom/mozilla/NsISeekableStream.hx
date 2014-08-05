package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISeekableStream") extern class NsISeekableStream extends NsISupports
{
	/**
	 * Specifies that the offset is relative to the start of the stream.
	 */
	static inline var NS_SEEK_SET = 0;
	/**
	 * Specifies that the offset is relative to the current position in the stream.
	 */
	static inline var NS_SEEK_CUR = 1;
	/**
	 * Specifies that the offset is relative to the end of the stream.
	 */
	static inline var NS_SEEK_END = 2;
	
	function seek(whence:Long, offset:LongLong) : Void;
	function setEOF() : Void;
	function tell() : LongLong;
}
