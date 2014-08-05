package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIURLFormatter") extern class NsIURLFormatter extends NsISupports
{
	function formatURL(aFormat:AString) : AString;
	function formatURLPref(aPref:AString) : AString;
}
