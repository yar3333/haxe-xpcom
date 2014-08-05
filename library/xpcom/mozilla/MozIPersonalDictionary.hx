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
	
	function addCorrection(word:Wstring, correction:Wstring, lang:Wstring) : Void;
	function addWord(word:Wstring, lang:Wstring) : Void;
	function check(word:Wstring, lang:Wstring) : Bool;
	function endSession() : Void;
	function getCorrection(word:Wstring, words:Array<Wstring>, count:PRUint32) : Void;
	function ignoreWord(word:Wstring) : Void;
	function load() : Void;
	function removeCorrection(word:Wstring, correction:Wstring, lang:Wstring) : Void;
	function removeWord(word:Wstring, lang:Wstring) : Void;
	function save() : Void;
}
