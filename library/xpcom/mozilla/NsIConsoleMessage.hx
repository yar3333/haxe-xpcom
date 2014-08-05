package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIConsoleMessage") extern class NsIConsoleMessage extends NsISupports
{
	/**
	 * The message in a string format. [binaryname(MessageMoz)] Read only.
	 */
	var message : Wstring;
}
