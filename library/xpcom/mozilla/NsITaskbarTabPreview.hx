package xpcom.mozilla;

import xpcom.types.*;

@:native("nsITaskbarTabPreview") extern class NsITaskbarTabPreview extends NsITaskbarPreview
{
	/**
	 * The icon displayed next to the title in the preview. This is null by default.
	 */
	var icon : ImgIContainer;
	/**
	 * The title displayed above the thumbnail. By default, this is an empty string.
	 */
	var title : DOMString;
	
	function EnsureRegistration() : Void;
	function GetHWND() : NativeWindow;
	function move(aNext:NsITaskbarTabPreview) : Void;
}
