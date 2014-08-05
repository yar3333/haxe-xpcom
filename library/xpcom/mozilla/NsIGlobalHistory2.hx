package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIGlobalHistory2") extern class NsIGlobalHistory2 extends NsISupports
{
	function addURI(aURI:NsIURI, aRedirect:Bool, aToplevel:Bool, aReferrer:NsIURI) : Void;
	function isVisited(aURI:NsIURI) : Bool;
	function setPageTitle(aURI:NsIURI, aTitle:AString) : Void;
}
