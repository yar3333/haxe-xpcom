package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIPrefBranch") extern class NsIPrefBranch extends NsISupports
{
	/**
	 * Called to get the root on which this branch is based, such as "browser.startup." Read only.
	 */
	var root : String;
}
