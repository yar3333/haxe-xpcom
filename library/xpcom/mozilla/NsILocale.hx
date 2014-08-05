package xpcom.mozilla;

import xpcom.types.*;

@:native("nsILocale") extern class NsILocale extends NsISupports
{
	function getCategory(category:AString) : AString;
}
