package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgCustomColumnHandler") extern class NsIMsgCustomColumnHandler extends NsITreeView
{
	function getSortStringForRow(aHdr:NsIMsgDBHdr) : AString;
	function getSortLongForRow(aHdr:NsIMsgDBHdr) : ULong;
	function isString() : Bool;
}
