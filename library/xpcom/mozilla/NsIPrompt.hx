package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIPrompt") extern class NsIPrompt extends NsISupports
{
	function alert(dialogTitle:Wstring, text:Wstring) : Void;
	function alertCheck(dialogTitle:Wstring, text:Wstring, checkMsg:Wstring, checkValue:Bool) : Void;
	function confirm(dialogTitle:Wstring, text:Wstring) : Bool;
	function confirmCheck(dialogTitle:Wstring, text:Wstring, checkMsg:Wstring, checkValue:Bool) : Bool;
	function confirmEx(dialogTitle:Wstring, text:Wstring, buttonFlags:ULong, button0Title:Wstring, button1Title:Wstring, button2Title:Wstring, checkMsg:Wstring, checkValue:Bool) : PRInt32;
	function prompt(dialogTitle:Wstring, text:Wstring, value:Wstring, checkMsg:Wstring, checkValue:Bool) : Bool;
	function promptPassword(dialogTitle:Wstring, text:Wstring, password:Wstring, checkMsg:Wstring, checkValue:Bool) : Bool;
	function promptUsernameAndPassword(dialogTitle:Wstring, text:Wstring, username:Wstring, password:Wstring, checkMsg:Wstring, checkValue:Bool) : Bool;
	function select(dialogTitle:Wstring, text:Wstring, count:PRUint32, selectList:Array<Wstring>, outSelection:Long) : Bool;
}
