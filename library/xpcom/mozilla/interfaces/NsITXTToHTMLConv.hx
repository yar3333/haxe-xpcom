package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsITXTToHTMLConv") extern class NsITXTToHTMLConv extends NsIStreamConverter
{
	function preFormatHTML(value:Bool) : Void;
	function setTitle(text:Wstring) : Void;
}
