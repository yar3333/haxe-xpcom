package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIMsgAccountManagerExtension") extern class NsIMsgAccountManagerExtension extends NsISupports
{
	/**
	 * name of the account manager extension. It has to be unique and defines the file name of the property file and the XUL Page as well as the name of the localized string contained in the property file. This attribute is readonly!
	 */
	var name : ACString;
	/**
	 * chrome package, where the files for the new panel are located. This is usually GUID of the ID of the addons which adds the new Panel. This attribute is readonly!
	 */
	var chromePackageName : ACString;
}
