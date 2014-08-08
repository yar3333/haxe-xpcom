package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAboutModule") extern class NsIAboutModule extends NsISupports
{
	function getURIFlags(aURI:NsIURI) : ULong;
	function newChannel(aURI:NsIURI) : NsIChannel;
}
