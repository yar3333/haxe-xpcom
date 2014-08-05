package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIParserUtils") extern class NsIParserUtils extends NsISupports
{
	public static inline function getService() : NsIParserUtils return Components.classes[cast "@mozilla.org/parserutils;1"].getService(Components.interfaces.nsIParserUtils);
}
