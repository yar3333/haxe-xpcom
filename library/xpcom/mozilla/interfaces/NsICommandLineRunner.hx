package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsICommandLineRunner") extern class NsICommandLineRunner extends NsICommandLine
{
	/**
	 * Process and combine the help text provided by each command-line handler. Read only.
	 */
	var helpText : AUTF8String;
	
	function init(argc:Long, argv:NsCharPtrArray, workingDir:NsIFile, state:ULong) : Void;
	function run() : Void;
	function setWindowContext(aWindow:NsIDOMWindow) : Void;
}
