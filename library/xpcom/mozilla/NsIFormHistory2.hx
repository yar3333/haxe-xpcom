package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIFormHistory2") extern class NsIFormHistory2 extends NsISupports
{
	/**
	 * Returns the underlying DB connection the form history module is using. Read only.
	 */
	var DBConnection : MozIStorageConnection;
	/**
	 * Returns true if the form history has any entries. Read only.
	 */
	var hasEntries : Bool;
}
