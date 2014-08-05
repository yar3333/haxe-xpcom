package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgCustomColumnHandler") extern class NsIMsgCustomColumnHandler extends NsITreeView
{
	function getSortStringForRow(aHdr:NsIMsgDBHdr) : AString;
	function getSortLongForRow(aHdr:NsIMsgDBHdr) : ULong;
	function isString() : Bool;
}
