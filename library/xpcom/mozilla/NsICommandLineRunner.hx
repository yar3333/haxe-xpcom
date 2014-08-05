package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICommandLineRunner") extern class NsICommandLineRunner extends NsICommandLine
{
	/**
	 * Process and combine the help text provided by each command-line handler. Read only.
	 */
	var helpText : AUTF8String;
}
