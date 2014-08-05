package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIPipe") extern class NsIPipe extends NsISupports
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
