package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIClassInfo") extern class NsIClassInfo extends NsISupports
{
	/**
	 * A human readable string naming the class, or null. Read only.
	 */
	var classDescription : String;
	/**
	 * A classID through which an instance of this class can be created, or null. If the flags attribute has the SINGLETON bit set, then the value of this attribute specifies a ClassID through which this class can be accessed as a service using nsIServiceManager.getService(). Read only.
	 */
	var classID : NsCIDPtr;
	/**
	 * A classID through which an instance of this class can be created, or null. If the flags attribute has the SINGLETON bit set, then the value of this attribute specifies a ClassID through which this class can be accessed as a service using nsIServiceManager.getService(). This attribute is similar to the classID attribute; however, this attribute exists so that C++ callers can avoid allocating and freeing a nsCID object, as would happen if they used classID. Read only. Violates the XPCOM interface guidelines Exceptions thrown  NS_ERROR_NOT_AVAILABLE If the class does not have a ClassID
	 */
	var classIDNoAlloc : NsCID;
	/**
	 * A contractID through which an instance of this class can be created, or null. If the flags attribute has the SINGLETON bit set, then the value of this attribute specifies a ContractID through which this class may be accessed as a service using nsIServiceManager.getServiceByContractID(). Read only.
	 */
	var contractID : String;
	/**
	 * Specifies various binary properties of this class. Possible values for this attribute include a bit-wise combination of the constants Read only.
	 */
	var flags : PRUint32;
	/**
	 * The language type in which this class is implemented. See nsIProgrammingLanguage.Constants for a list of possible values. Read only.
	 */
	var implementationLanguage : PRUint32;
	
	function getHelperForLanguage(language:PRUint32) : NsISupports;
	function getInterfaces(count:PRUint32, array:Array<NsIIDPtr>) : Void;
}
