package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICommandLineHandler") extern class NsICommandLineHandler extends NsISupports
{
	/**
	 * When the application is launched with the -help argument, this attribute is retrieved and displayed to the user (on stdout). The text should have embedded newlines which wrap at 76 columns, and should include a newline at the end. By convention, the right column which contains flag descriptions begins at the 24th character. Read only.
	 */
	var helpInfo : AUTF8String;
	
	function handle(aCommandLine:NsICommandLine) : Void;
}
