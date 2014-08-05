package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("mozIPersonalDictionary") extern class MozIPersonalDictionary extends NsISupports
{
	public static inline function getService() : MozIPersonalDictionary return Components.classes[cast "@mozilla.org/spellchecker/personaldictionary;1"].getService(Components.interfaces.mozIPersonalDictionary);
	
	/**
	 * Get the (lexicographically sorted) list of words. Read only.
	 */
	var wordList : NsIStringEnumerator;
}
