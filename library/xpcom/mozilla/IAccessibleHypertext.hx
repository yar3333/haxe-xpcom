package xpcom.mozilla;

import xpcom.types.*;

@:native("IAccessibleHypertext") extern class IAccessibleHypertext extends IAccessibleText
{
	function hyperlink(index:Long, hyperlink:IAccessibleHyperlink) : HRESULT;
	function hyperlinkIndex(charIndex:Long, hyperlinkIndex:Long) : HRESULT;
	function nHyperlinks(hyperlinkCount:Long) : HRESULT;
}
