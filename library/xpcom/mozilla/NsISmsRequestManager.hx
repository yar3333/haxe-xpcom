package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsISmsRequestManager") extern class NsISmsRequestManager extends NsISupports
{
	public static inline function createInstance() : NsISmsRequestManager return Components.Constructor("@mozilla.org/sms/smsrequestmanager;1", Components.interfaces.nsISmsRequestManager);
}
