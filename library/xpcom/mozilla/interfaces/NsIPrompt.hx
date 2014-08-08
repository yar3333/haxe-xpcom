package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPrompt") extern class NsIPrompt extends NsISupports
{
	function alert(dialogTitle:Wstring, text:Wstring) : Void;
	function alertCheck(dialogTitle:Wstring, text:Wstring, checkMsg:Wstring, checkValue:{value:Bool}) : Void;
	function confirm(dialogTitle:Wstring, text:Wstring) : Bool;
	function confirmCheck(dialogTitle:Wstring, text:Wstring, checkMsg:Wstring, checkValue:{value:Bool}) : Bool;
	function confirmEx(dialogTitle:Wstring, text:Wstring, buttonFlags:ULong, button0Title:Wstring, button1Title:Wstring, button2Title:Wstring, checkMsg:Wstring, checkValue:{value:Bool}) : PRInt32;
	function prompt(dialogTitle:Wstring, text:Wstring, value:{value:Wstring}, checkMsg:Wstring, checkValue:{value:Bool}) : Bool;
	function promptPassword(dialogTitle:Wstring, text:Wstring, password:{value:Wstring}, checkMsg:Wstring, checkValue:{value:Bool}) : Bool;
	function promptUsernameAndPassword(dialogTitle:Wstring, text:Wstring, username:{value:Wstring}, password:{value:Wstring}, checkMsg:Wstring, checkValue:{value:Bool}) : Bool;
	function select(dialogTitle:Wstring, text:Wstring, count:PRUint32, selectList:Array<Wstring>, outSelection:{value:Long}) : Bool;
}
