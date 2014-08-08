package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIXULBuilderListener") extern class NsIXULBuilderListener extends NsISupports
{
	function didRebuild(aBuilder:NsIXULTemplateBuilder) : Void;
	function willRebuild(aBuilder:NsIXULTemplateBuilder) : Void;
}
