package xpcom.mozilla;

import xpcom.types.*;

@:native("nsILoginManagerPrompter") extern class NsILoginManagerPrompter extends NsISupports
{
	function init(aWindow:NsIDOMWindow) : Void;
	function promptToChangePassword(aOldLogin:NsILoginInfo, aNewLogin:NsILoginInfo) : Void;
	function promptToChangePasswordWithUsernames(logins:Array<NsILoginInfo>, count:PRUint32, aNewLogin:NsILoginInfo) : Void;
	function promptToSavePassword(aLogin:NsILoginInfo) : Void;
}
