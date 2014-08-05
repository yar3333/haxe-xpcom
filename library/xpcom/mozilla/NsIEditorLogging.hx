package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIEditorLogging") extern class NsIEditorLogging extends NsISupports
{
	function startLogging(aLogFile:NsIFile) : Void;
	function stopLogging() : Void;
}
