package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIBlocklistPrompt") extern class NsIBlocklistPrompt extends NsISupports
{
	function prompt(aAddons:Array<NsIVariant>, ?aCount:PRUint32) : Void;
}
