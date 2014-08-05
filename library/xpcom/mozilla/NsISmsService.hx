package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsISmsService") extern class NsISmsService extends NsISupports
{
	public static inline function createInstance() : NsISmsService return Components.Constructor("@mozilla.org/sms/smsservice;1", Components.interfaces.nsISmsService);
}
