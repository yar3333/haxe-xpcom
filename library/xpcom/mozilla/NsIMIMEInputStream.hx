package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIMIMEInputStream") extern class NsIMIMEInputStream extends NsIInputStream
{
	public static inline function createInstance() : NsIMIMEInputStream return Components.Constructor("@mozilla.org/network/mime-input-stream;1", Components.interfaces.nsIMIMEInputStream);
	
	/**
	 * When true a "Content-Length" header is automatically added to the stream. The value of the content-length is automatically calculated using the available() method on the data stream. The value is recalculated every time the stream is rewound to the start. Not allowed to be changed once the stream has been started to be read.
	 */
	var addContentLength : Bool;
	
	function addHeader(name:String, value:String) : Void;
	function setData(stream:NsIInputStream) : Void;
}
