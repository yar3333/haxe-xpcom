package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAppShellService") extern class NsIAppShellService extends NsISupports
{
	/**
	 * Return true if the application hidden window was provided by the application. If it was not, the default hidden window was used. This will usually be false on all non-mac platforms. Read only.
	 */
	var applicationProvidedHiddenWindow : Bool;
	/**
	 * Return the (singleton) application hidden window, automatically created and maintained by this AppShellService. Read only.
	 */
	var hiddenDOMWindow : NsIDOMWindow;
	/**
	 * Return the (singleton) application hidden window, automatically created and maintained by this AppShellService. Read only.
	 */
	var hiddenWindow : NsIXULWindow;
	/**
	 * Getter for "native application support." Read only. Obsolete since Gecko 1.8
	 */
	var nativeAppSupport : NsINativeAppSupport;
}
