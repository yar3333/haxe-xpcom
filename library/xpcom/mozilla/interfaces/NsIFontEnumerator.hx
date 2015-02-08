package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFontEnumerator") extern class NsIFontEnumerator extends NsISupports
{
	public static inline function getService() : NsIFontEnumerator
	{
		return xpcom.Components.classes[cast "@mozilla.org/gfx/fontenumerator;1"].getService(NsIFontEnumerator);
	}
	
	/**
	 * Return a sorted array of the names of all installed fonts.
	 * @param  aResult    returns array of names
	 * @return Void
	 */
	function EnumerateAllFonts(aResult:{ ?value:Array<String> }) : Array<String>;

	/**
	 * Return a sorted array of names of fonts that support the given language
	 * group and are suitable for use as the given CSS generic font.
	 * @param  aLangGroup language group
	 * @param  aGeneric   CSS generic font
	 * @param  aResult    returns array of names
	 * @return Void
	 */
	function EnumerateFonts(aLangGroup:String, aGeneric:String, aResult:{ ?value:Array<String> }) : Array<String>;

	/**
		@param  aLangGroup language group
		@return bool do we have a font for this language group
	 */
	function HaveFontFor(aLangGroup:String) : Bool;

	/**
	 * @param  aLangGroup language group
	 * @param  aGeneric CSS generic font
	 * @return suggested default font for this language group and generic family
	 */
	function getDefaultFont(aLangGroup:String, aGeneric:String) : String;

	/**
	 * update the global font list
	 * return true if font list is changed
	 */
	function updateFontList() : Bool;

	/**
	 * get the standard family name on the system from given family
	 * @param  aName family name which may be alias
	 * @return the standard family name on the system, if given name does not exist, returns empty String
	 */
	function getStandardFamilyName(aName:String) : String;
}