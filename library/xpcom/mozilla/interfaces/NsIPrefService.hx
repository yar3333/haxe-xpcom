package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPrefService") extern class NsIPrefService extends NsISupports
{
	function getBranch(aPrefRoot:String) : NsIPrefBranch;
	function getDefaultBranch(aPrefRoot:String) : NsIPrefBranch;
	function readUserPrefs(aFile:NsIFile) : Void;
	function resetPrefs() : Void;
	function resetUserPrefs() : Void;
	function savePrefFile(aFile:NsIFile) : Void;
}
