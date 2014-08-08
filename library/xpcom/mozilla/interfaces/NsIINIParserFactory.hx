package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIINIParserFactory") extern class NsIINIParserFactory extends NsISupports
{
	function createINIParser(aINIFile:NsILocalFile) : NsIINIParser;
}
