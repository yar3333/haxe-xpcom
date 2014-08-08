package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIEditorObserver") extern class NsIEditorObserver extends NsISupports
{
	function EditAction() : Void;
}
