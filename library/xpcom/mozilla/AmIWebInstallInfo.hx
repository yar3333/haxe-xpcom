package xpcom.mozilla;

import xpcom.types.*;

@:native("amIWebInstallInfo") extern class AmIWebInstallInfo extends NsISupports
{
	/**
	 * An array of AddonInstall objects. Read only.
	 */
	var installs : NsIVariant;
	/**
	 * The URI that started the installs. For example, the referring page for a link to an XPI download. Read only.
	 */
	var originatingURI : NsIURI;
	/**
	 * The window that started the installs. Read only.
	 * Note: Prior to Gecko 8.0 (Firefox 8.0 / Thunderbird 8.0 / SeaMonkey 2.5), this was an nsIDOMWindowInternal.
	 */
	var originatingWindow : NsIDOMWindow;
}
