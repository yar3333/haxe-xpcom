package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIEditorLogging") extern class NsIEditorLogging extends NsISupports
{
	function startLogging(aLogFile:NsIFile) : Void;
	function stopLogging() : Void;
}
