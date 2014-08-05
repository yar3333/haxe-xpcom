package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIArray") extern class NsIArray extends NsISupports
{
	/**
	 * The number of elements in the array. Read only.
	 */
	var length : ULong;
	
	function enumerate() : NsISimpleEnumerator;
	function indexOf(startIndex:ULong, element:NsISupports) : ULong;
	function queryElementAt(index:ULong, uuid:NsIIDRef, result:NsQIResult) : Void;
}
