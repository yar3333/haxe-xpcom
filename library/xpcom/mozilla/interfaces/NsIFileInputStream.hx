package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFileInputStream") extern class NsIFileInputStream extends NsIInputStream
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
	/**
	 * If this is set, the file will be opened (i.e., a call to <a href="https://developer.mozilla.org/en/PR_Open" title="en/PR Open">PR_Open()</a> done) only when we do an actual operation on the stream, or more specifically, when one of the following is called: <ul> <li>Seek()</li> <li>Tell()</li> <li>Available()</li> <li>Read()</li> <li>ReadLine()</li> </ul> <p>DEFER_OPEN is useful if we use the stream on a background thread, so that the opening and possible stating of the file happens there as well.</p> <p><strong>Note:</strong> Using this flag results in the file not being opened during the call to init. This means that any errors that might happen when this flag is not set would happen during the first read. Also, the file is not locked when init is called, so it might be deleted before we try to read from it.</p> 
	 */
	static inline var DEFER_OPEN  = 1<<4;
	
	function init(file:NsIFile, ioFlags:Long, perm:Long, behaviorFlags:Long) : Void;
}
