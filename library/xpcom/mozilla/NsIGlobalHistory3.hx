package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIGlobalHistory3") extern class NsIGlobalHistory3 extends NsIGlobalHistory2
{
	function addDocumentRedirect(aOldChannel:NsIChannel, aNewChannel:NsIChannel, aFlags:PRInt32, aTopLevel:Bool) : Void;
	function getURIGeckoFlags(aURI:NsIURI) : ULong;
	function setURIGeckoFlags(aURI:NsIURI, aFlags:ULong) : Void;
}
