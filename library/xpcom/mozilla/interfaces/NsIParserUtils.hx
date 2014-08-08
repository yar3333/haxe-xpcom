package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIParserUtils") extern class NsIParserUtils extends NsISupports
{
	public static inline function getService() : NsIParserUtils return Components.classes[cast "@mozilla.org/parserutils;1"].getService(Components.interfaces.nsIParserUtils);
	
	function convertToPlainText(src:AString, flags:ULong, wrapCol:ULong) : AString;
	function parseFragment(fragment:AString, flags:ULong, isXML:Bool, baseURI:NsIURI, element:NsIDOMElement) : NsIDOMDocumentFragment;
	function sanitize(src:AString, flags:ULong) : AString;
}
