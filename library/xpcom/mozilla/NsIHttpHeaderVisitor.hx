package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIHttpHeaderVisitor") extern class NsIHttpHeaderVisitor extends NsISupports
{
	function visitHeader(aHeader:ACString, aValue:ACString) : Void;
}
