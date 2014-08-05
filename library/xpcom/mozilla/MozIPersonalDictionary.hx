package xpcom.mozilla;

import xpcom.types.*;

@:native("mozIPersonalDictionary") extern class MozIPersonalDictionary extends NsISupports
{
	/**
	 * Get the (lexicographically sorted) list of words. Read only.
	 */
	var wordList : NsIStringEnumerator;
}
