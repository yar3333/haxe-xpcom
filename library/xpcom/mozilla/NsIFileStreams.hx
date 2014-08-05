package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFileStreams") extern class NsIFileStreams extends NsISupports
{
	/**
	 * If this is set, the file will be deleted by the time the stream is closed. It may be removed before the stream is closed if it is possible to delete it and still read from it. If OPEN_ON_READ is defined, and the file was recreated after the first delete, the file will be deleted again when it is closed again.
	 */
	static inline var DELETE_ON_CLOSE = 1<<1;
	/**
	 * If this is set, the file will close automatically when the end of the file is reached.
	 */
	static inline var CLOSE_ON_EOF = 1<<2;
	/**
	 * If this is set, the file will be reopened whenever Seek(0) occurs. If the file is already open and the seek occurs, it will happen naturally. (The file will only be reopened if it is closed for some reason.)
	 */
	static inline var REOPEN_ON_REWIND = 1<<3;
}
