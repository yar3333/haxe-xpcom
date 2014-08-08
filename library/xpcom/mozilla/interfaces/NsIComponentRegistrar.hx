package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIComponentRegistrar") extern class NsIComponentRegistrar extends NsISupports
{
	function autoRegister(aSpec:NsIFile) : Void;
	function autoUnregister(aSpec:NsIFile) : Void;
	function CIDToContractID(aClass:NsCIDRef) : String;
	function contractIDToCID(aContractID:String) : NsCIDPtr;
	function enumerateCIDs() : NsISimpleEnumerator;
	function enumerateContractIDs() : NsISimpleEnumerator;
	function isCIDRegistered(aClass:NsCIDRef) : Bool;
	function isContractIDRegistered(aContractID:String) : Bool;
	function registerFactory(aClass:NsCIDRef, aClassName:String, aContractID:String, aFactory:NsIFactory) : Void;
	function registerFactoryLocation(aClass:NsCIDRef, aClassName:String, aContractID:String, aFile:NsIFile, aLoaderStr:String, aType:String) : Void;
	function unregisterFactory(aClass:NsCIDRef, aFactory:NsIFactory) : Void;
	function unregisterFactoryLocation(aClass:NsCIDRef, aFile:NsIFile) : Void;
}
