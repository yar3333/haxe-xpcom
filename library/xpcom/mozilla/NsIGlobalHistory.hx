package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIGlobalHistory") extern class NsIGlobalHistory extends NsISupports
{
	function addPage(aURL:String) : Void;
	function isVisited(aURL:String) : Bool;
}
