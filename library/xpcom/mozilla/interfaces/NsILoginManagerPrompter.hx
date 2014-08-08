package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsILoginManagerPrompter") extern class NsILoginManagerPrompter extends NsISupports
{
	function init(aWindow:NsIDOMWindow) : Void;
	function promptToChangePassword(aOldLogin:NsILoginInfo, aNewLogin:NsILoginInfo) : Void;
	function promptToChangePasswordWithUsernames(logins:Array<NsILoginInfo>, count:PRUint32, aNewLogin:NsILoginInfo) : Void;
	function promptToSavePassword(aLogin:NsILoginInfo) : Void;
}
