package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIToolkitProfile") extern class NsIToolkitProfile extends NsISupports
{
	/**
	 * The location of the profile local directory, which may be the same as the root directory. See nsIProfileLock.localDirectory(). Read only.
	 */
	var localDir : NsILocalFile;
	/**
	 * The profile's name.
	 */
	var name : AUTF8String;
	/**
	 * The location of the profile directory. Read only.
	 */
	var rootDir : NsILocalFile;
	
	function lock(aUnlocker:{value:NsIProfileUnlocker}) : NsIProfileLock;
	function remove(removeFiles:Bool) : Void;
}
