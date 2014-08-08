package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.IAccessibleEditableText") extern class IAccessibleEditableText extends IUnknown
{
	function copyText(startOffset:Long, endOffset:Long) : HRESULT;
	function cutText(startOffset:Long, endOffset:Long) : HRESULT;
	function deleteText(startOffset:Long, endOffset:Long) : HRESULT;
	function insertText(offset:Long, text:BSTR) : HRESULT;
	function pasteText(offset:Long) : HRESULT;
	function replaceText(startOffset:Long, endOffset:Long, text:BSTR) : HRESULT;
	function setAttributes(startOffset:Long, endOffset:Long, attributes:BSTR) : HRESULT;
}
