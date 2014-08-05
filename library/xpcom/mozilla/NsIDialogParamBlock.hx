package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIDialogParamBlock") extern class NsIDialogParamBlock extends NsISupports
{
	/**
	 * A place where you can store an nsIMutableArray to pass nsISupports.
	 */
	var objects : NsIMutableArray;
	
	function GetInt(inIndex:PRInt32) : PRInt32;
	function GetString(inIndex:PRInt32) : Wstring;
	function SetInt(inIndex:PRInt32, inInt:PRInt32) : Void;
	function SetNumberStrings(inNumStrings:PRInt32) : Void;
	function SetString(inIndex:PRInt32, inString:Wstring) : Void;
}
