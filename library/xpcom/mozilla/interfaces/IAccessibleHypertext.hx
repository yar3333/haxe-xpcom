package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleHypertext") extern class IAccessibleHypertext extends IAccessibleText
{
	function hyperlink(index:Long, hyperlink:{value:IAccessibleHyperlink}) : HRESULT;
	function hyperlinkIndex(charIndex:Long, hyperlinkIndex:{value:Long}) : HRESULT;
	function nHyperlinks(hyperlinkCount:{value:Long}) : HRESULT;
}
