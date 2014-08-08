package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIHttpHeaderVisitor") extern class NsIHttpHeaderVisitor extends NsISupports
{
	function visitHeader(aHeader:ACString, aValue:ACString) : Void;
}
