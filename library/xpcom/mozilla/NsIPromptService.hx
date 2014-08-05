package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIPromptService") extern class NsIPromptService extends NsISupports
{
	public static inline function createInstance() : NsIPromptService return Components.Constructor("@mozilla.org/embedcomp/prompt-service;1", Components.interfaces.nsIPromptService);
	
	function alert(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring) : Void;
	function alertCheck(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aCheckMsg:Wstring, aCheckState:Bool) : Void;
	function confirm(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring) : Bool;
	function confirmCheck(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aCheckMsg:Wstring, aCheckState:Bool) : Bool;
	function confirmEx(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aButtonFlags:ULong, aButton0Title:Wstring, aButton1Title:Wstring, aButton2Title:Wstring, aCheckMsg:Wstring, aCheckState:Bool) : PRInt32;
	function prompt(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aValue:Wstring, aCheckMsg:Wstring, aCheckState:Bool) : Bool;
	function promptUsernameAndPassword(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aUsername:Wstring, aPassword:Wstring, aCheckMsg:Wstring, aCheckState:Bool) : Bool;
	function promptPassword(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aPassword:Wstring, aCheckMsg:Wstring, aCheckState:Bool) : Bool;
	function select(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aCount:PRUint32, aSelectList:Array<Wstring>, aOutSelection:Long) : Bool;
}
