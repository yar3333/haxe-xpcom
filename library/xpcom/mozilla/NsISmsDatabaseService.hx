package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsISmsDatabaseService") extern class NsISmsDatabaseService extends NsISupports
{
	public static inline function createInstance() : NsISmsDatabaseService return Components.Constructor("@mozilla.org/sms/smsdatabaseservice;1", Components.interfaces.nsISmsDatabaseService);
}
