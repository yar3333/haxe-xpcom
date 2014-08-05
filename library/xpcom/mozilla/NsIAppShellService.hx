package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIAppShellService") extern class NsIAppShellService extends NsISupports
{
	public static inline function getService() : NsIAppShellService return Components.classes[cast "@mozilla.org/appshell/appShellService;1"].getService(Components.interfaces.nsIAppShellService);
	
	/**
	 * Create a window, which will be initially invisible.
	 */
	static inline var SIZE_TO_CONTENT = -1;
	/**
	 * Attempt to quit if all windows are closed. <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var eConsiderQuit = 1;
	/**
	 * Try to close all windows, then quit if successful. <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var eAttemptQuit = 2;
	/**
	 * Force all windows to close, then quit. <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 1.5 / Thunderbird 1.5 / SeaMonkey 1.0)">Obsolete since Gecko 1.8</span>
	 */
	static inline var eForceQuit = 3;
	
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
