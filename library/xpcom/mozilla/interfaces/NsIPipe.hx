package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPipe") extern class NsIPipe extends NsISupports
{
	/**
	 * The pipe's input end, which also implements nsISearchableInputStream. Read only.
	 */
	var inputStream : NsIAsyncInputStream;
	/**
	 * The pipe's output end. Read only.
	 */
	var outputStream : NsIAsyncOutputStream;
	
	function init(nonBlockingInput:Bool, nonBlockingOutput:Bool, segmentSize:ULong, segmentCount:ULong, segmentAllocator:NsIMemory) : Void;
}
