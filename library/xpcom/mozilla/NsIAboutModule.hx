package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIAboutModule") extern class NsIAboutModule extends NsISupports
{
	function getURIFlags(aURI:NsIURI) : ULong;
	function newChannel(aURI:NsIURI) : NsIChannel;
}
