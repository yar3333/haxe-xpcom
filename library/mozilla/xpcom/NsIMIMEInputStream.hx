package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIMIMEInputStream") extern class NsIMIMEInputStream extends NsIInputStream
{
	/**
	 * When true a "Content-Length" header is automatically added to the stream. The value of the content-length is automatically calculated using the available() method on the data stream. The value is recalculated every time the stream is rewound to the start. Not allowed to be changed once the stream has been started to be read.
	 */
	var addContentLength : Bool;
}
