package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDOMFontFace") extern class NsIDOMFontFace extends NsISupports
{
	/**
	 * Indicates whether or not the font was located in a font group. Read only.
	 */
	var fromFontGroup : Bool;
	/**
	 * Indicates whether or not the font was located using language preferences. Read only.
	 */
	var fromLanguagePrefs : Bool;
	/**
	 * Indicates whether or not the font is the system fallback font. Read only.
	 */
	var fromSystemFallback : Bool;
}
