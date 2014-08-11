package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPromptService") extern class NsIPromptService extends NsISupports
{
	public static inline function getService() : NsIPromptService
	{
		return xpcom.Components.classes[cast "@mozilla.org/embedcomp/prompt-service;1"].getService(NsIPromptService);
	}
	
	/**
	 * This is usually the button used to confirm the prompt. It typically has the label "OK", "Yes", or "Save".
	 */
	static inline var BUTTON_POS_0 = 1;
	/**
	 * This is the button used to cancel the prompt. It typically has the label "Cancel" or "No". It is equivalent to pressing the Escape key (or Cmd+. on the Mac), or closing the window through the OS controls.
	 */
	static inline var BUTTON_POS_1 = 256;
	/**
	 * This button can be used to give the user a choice of options, but still allowing the user to cancel the prompt. For instance, it might have the label "Don't Save".
	 */
	static inline var BUTTON_POS_2 = 65536;
	/**
	 * These flags are used to select standard labels from the user's current locale.
	 */
	static inline var BUTTON_TITLE_OK = 1;
	static inline var BUTTON_TITLE_CANCEL = 2;
	static inline var BUTTON_TITLE_YES = 3;
	static inline var BUTTON_TITLE_NO = 4;
	static inline var BUTTON_TITLE_SAVE = 5;
	static inline var BUTTON_TITLE_DONT_SAVE = 6;
	static inline var BUTTON_TITLE_REVERT = 7;
	/**
	 * This flag indicates that the label is passed as a separate string. Use this for labels that don't match one of the constants above.
	 */
	static inline var BUTTON_TITLE_IS_STRING = 127;
	static inline var BUTTON_POS_0_DEFAULT = 0;
	static inline var BUTTON_POS_1_DEFAULT = 16777216;
	static inline var BUTTON_POS_2_DEFAULT = 33554432;
	static inline var BUTTON_DELAY_ENABLE = 67108864;
	/**
	 * <p>selects the standard set of OK/Cancel buttons.</p>
	 * (BUTTON_TITLE_OK *BUTTON_POS_0) +(BUTTON_TITLE_CANCEL * BUTTON_POS_1)
	 */
	static inline var STD_OK_CANCEL_BUTTONS = 513;
	/**
	 * <p>selects the standard set of Yes/No buttons.</p>
	 * (BUTTON_TITLE_YES *BUTTON_POS_0) +(BUTTON_TITLE_NO * BUTTON_POS_1)
	 */
	static inline var STD_YES_NO_BUTTONS = 1027;
	
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
