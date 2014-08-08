package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIModule") extern class NsIModule extends NsISupports
{
	function canUnload(aCompMgr:NsIComponentManager) : Bool;
	function getClassObject(aCompMgr:NsIComponentManager, aClass:NsCIDRef, aIID:NsIIDRef, aResult:NsQIResult) : Void;
	function registerSelf(aCompMgr:NsIComponentManager, aLocation:NsIFile, aLoaderStr:String, aType:String) : Void;
	function unregisterSelf(aCompMgr:NsIComponentManager, aLocation:NsIFile, aLoaderStr:String) : Void;
}
