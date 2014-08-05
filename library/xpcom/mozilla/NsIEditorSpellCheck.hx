package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIEditorSpellCheck") extern class NsIEditorSpellCheck extends NsISupports
{
	public static inline function createInstance() : NsIEditorSpellCheck return Components.Constructor("@mozilla.org/editor/editorspellchecker;1", Components.interfaces.nsIEditorSpellCheck);
	
	function AddWordToDictionary(word:Wstring) : Void;
	function canSpellCheck() : Bool;
	function checkCurrentDictionary() : Void;
	function CheckCurrentWord(suggestedWord:Wstring) : Bool;
	function CheckCurrentWordNoSuggest(suggestedWord:Wstring) : Bool;
	function GetCurrentDictionary() : AString;
	function GetDictionaryList(dictionaryList:Array<Wstring>, count:PRUint32) : Void;
	function GetNextMisspelledWord() : Wstring;
	function GetPersonalDictionary() : Void;
	function GetPersonalDictionaryWord() : Wstring;
	function GetSuggestedWord() : Wstring;
	function IgnoreWordAllOccurrences(word:Wstring) : Void;
	function InitSpellChecker(editor:NsIEditor, enableSelectionChecking:Bool) : Void;
	function RemoveWordFromDictionary(word:Wstring) : Void;
	function ReplaceWord(misspelledWord:Wstring, replaceWord:Wstring, allOccurrences:Bool) : Void;
	function saveDefaultDictionary() : Void;
	function SetCurrentDictionary(dictionary:AString) : Void;
	function setFilter(filter:NsITextServicesFilter) : Void;
	function UninitSpellChecker() : Void;
	function UpdateCurrentDictionary() : Void;
}
