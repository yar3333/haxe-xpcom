package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITXTToHTMLConv") extern class NsITXTToHTMLConv extends NsIStreamConverter
{
	function preFormatHTML(value:Bool) : Void;
	function setTitle(text:Wstring) : Void;
}
