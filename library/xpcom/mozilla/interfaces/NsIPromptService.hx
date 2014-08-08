package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPromptService") extern class NsIPromptService extends NsISupports
{
	public static inline function getService() : NsIPromptService
	{
		return xpcom.Components.classes[cast "@mozilla.org/embedcomp/prompt-service;1"].getService(NsIPromptService);
	}
	
	function alert(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring) : Void;
	function alertCheck(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aCheckMsg:Wstring, aCheckState:{value:Bool}) : Void;
	function confirm(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring) : Bool;
	function confirmCheck(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aCheckMsg:Wstring, aCheckState:{value:Bool}) : Bool;
	function confirmEx(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aButtonFlags:ULong, aButton0Title:Wstring, aButton1Title:Wstring, aButton2Title:Wstring, aCheckMsg:Wstring, aCheckState:{value:Bool}) : PRInt32;
	function prompt(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aValue:{value:Wstring}, aCheckMsg:Wstring, aCheckState:{value:Bool}) : Bool;
	function promptUsernameAndPassword(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aUsername:{value:Wstring}, aPassword:{value:Wstring}, aCheckMsg:Wstring, aCheckState:{value:Bool}) : Bool;
	function promptPassword(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aPassword:{value:Wstring}, aCheckMsg:Wstring, aCheckState:{value:Bool}) : Bool;
	function select(aParent:NsIDOMWindow, aDialogTitle:Wstring, aText:Wstring, aCount:PRUint32, aSelectList:Array<Wstring>, aOutSelection:{value:Long}) : Bool;
}
