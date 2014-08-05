package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIComponentManager") extern class NsIComponentManager extends NsISupports
{
	function addBootstrappedManifestLocation(aLocation:NsILocalFile) : Void;
	function createInstance(aClass:NsCIDRef, aDelegate:NsISupports, aIID:NsIIDRef, result:NsQIResult) : Void;
	function createInstanceByContractID(aContractID:String, aDelegate:NsISupports, aIID:NsIIDRef, result:NsQIResult) : Void;
	function getClassObject(aClass:NsCIDRef, aIID:NsIIDRef, result:NsQIResult) : Void;
	function getClassObjectByContractID(aContractID:String, aIID:NsIIDRef, result:NsQIResult) : Void;
	function removeBootstrappedManifestLocation(aLocation:NsILocalFile) : Void;
}
