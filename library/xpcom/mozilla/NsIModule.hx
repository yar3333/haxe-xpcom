package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIModule") extern class NsIModule extends NsISupports
{
	function canUnload(aCompMgr:NsIComponentManager) : Bool;
	function getClassObject(aCompMgr:NsIComponentManager, aClass:NsCIDRef, aIID:NsIIDRef, aResult:NsQIResult) : Void;
	function registerSelf(aCompMgr:NsIComponentManager, aLocation:NsIFile, aLoaderStr:String, aType:String) : Void;
	function unregisterSelf(aCompMgr:NsIComponentManager, aLocation:NsIFile, aLoaderStr:String) : Void;
}
