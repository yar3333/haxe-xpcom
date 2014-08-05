package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIPluginHost") extern class NsIPluginHost extends NsISupports
{
	/**
	 * Read only. Native code only!
	 */
	var pluginCount : ULong;
}
