package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozISpellCheckingEngine") extern class MozISpellCheckingEngine extends NsISupports
{
	/**
	 * A string indicating the copyright of the engine. Not currently used. Read only.
	 */
	var copyright : Wstring;
	/**
	 * The name of the current dictionary used by check() and suggest(). This will be either element from the array returned by getDictionaryList() or an empty string if no dictionary is selected.
	 * Note: Setting this value to a value that doesn't match an existing dictionary throws a NS_ERROR_FILE_NOT_FOUND exception.
	 * When this attribute's value is changed, a "spellcheck-dictionary-update" notification is sent. If the dictionary was set to "no dictionary" (that is, by specifying an empty string), the observer may select another dictionary before returning.
	 */
	var dictionary : Wstring;
	/**
	 * The language this spell checker is using when checking. This is the language of dictionary. Read only.
	 * When this changes, the spell checker sends a "spellcheck-dictionary-update" notification.
	 */
	var language : Wstring;
	/**
	 * The name of the engine. Not currently used. Read only.
	 */
	var name : Wstring;
	/**
	 * The personal dictionary.
	 */
	var personalDictionary : MozIPersonalDictionary;
	/**
	 * Does the engine provide its own  personalDictionary? Read only.
	 */
	var providesPersonalDictionary : Bool;
	/**
	 * Does the engine provide its own word utilities? Read only.
	 */
	var providesWordUtils : Bool;
	
	function addDirectory(dir:NsIFile) : Void;
	function check(word:Wstring) : Bool;
	function getDictionaryList(dictionaries:Array<Wstring>, count:PRUint32) : Void;
	function removeDirectory(dir:NsIFile) : Void;
	function suggest(word:Wstring, suggestions:Array<Wstring>, count:PRUint32) : Void;
}
