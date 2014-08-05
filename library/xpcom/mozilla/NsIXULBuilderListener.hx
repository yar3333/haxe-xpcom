package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXULBuilderListener") extern class NsIXULBuilderListener extends NsISupports
{
	function didRebuild(aBuilder:NsIXULTemplateBuilder) : Void;
	function willRebuild(aBuilder:NsIXULTemplateBuilder) : Void;
}
