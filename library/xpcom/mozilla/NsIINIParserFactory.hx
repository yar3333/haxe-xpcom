package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIINIParserFactory") extern class NsIINIParserFactory extends NsISupports
{
	function createINIParser(aINIFile:NsILocalFile) : NsIINIParser;
}
