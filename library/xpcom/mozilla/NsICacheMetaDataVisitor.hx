package xpcom.mozilla;

import xpcom.types.*;

@:native("nsICacheMetaDataVisitor") extern class NsICacheMetaDataVisitor extends NsISupports
{
	function visitMetaDataElement(key:String, value:String) : Bool;
}
