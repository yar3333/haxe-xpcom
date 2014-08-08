package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIComponentManager") extern class NsIComponentManager extends NsISupports
{
	function addBootstrappedManifestLocation(aLocation:NsILocalFile) : Void;
	function createInstance(aClass:NsCIDRef, aDelegate:NsISupports, aIID:NsIIDRef, result:{value:NsQIResult}) : Void;
	function createInstanceByContractID(aContractID:String, aDelegate:NsISupports, aIID:NsIIDRef, result:{value:NsQIResult}) : Void;
	function getClassObject(aClass:NsCIDRef, aIID:NsIIDRef, result:{value:NsQIResult}) : Void;
	function getClassObjectByContractID(aContractID:String, aIID:NsIIDRef, result:{value:NsQIResult}) : Void;
	function removeBootstrappedManifestLocation(aLocation:NsILocalFile) : Void;
}
