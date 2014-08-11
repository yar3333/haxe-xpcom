package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIClassInfo") extern class NsIClassInfo extends NsISupports
{
	/**
	 * The class is a singleton that must be accessed via <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIServiceManager" title="">nsIServiceManager</a></code>.
	 */
	static inline var SINGLETON = 1 << 0;
	/**
	 * The class may be accessed by any thread.
	 */
	static inline var THREADSAFE = 1 << 1;
	/**
	 * The class may only be accessed by the main application thread.
	 */
	static inline var MAIN_THREAD_ONLY = 1 << 2;
	/**
	 * The class is a DOM object.
	 */
	static inline var DOM_OBJECT = 1 << 3;
	/**
	 * The class is a plugin object.
	 */
	static inline var PLUGIN_OBJECT = 1 << 4;
	/**
	 * <p>Specifies that this class implements <code><a class="new" href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIContent" title="">nsIContent</a></code>.</p> <div class="note"><strong>Note:</strong> This flag is private and is for use by the Mozilla codebase only.</div>
	 */
	static inline var CONTENT_NODE = 1 << 6;
	/**
	 * The high order bit is RESERVED for consumers of these flags. No implementor of this interface should ever return flags with this bit set.
	 */
	static inline var RESERVED = 1 << 31;
	/**
	 * This flag is designed for use with <code><a href="https://developer.mozilla.org/nsGenericFactory" title="nsGenericFactory">nsGenericFactory</a></code> and can be set in <code><a href="https://developer.mozilla.org/en/NsModuleComponentInfo/mFlags" title="en/NsModuleComponentInfo/mFlags">nsModuleComponentInfo::mFlags</a></code>. It has no meaning when returned from the flags attribute of a nsIClassInfo implementation. <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 4 / Thunderbird 3.3 / SeaMonkey 2.1)">Obsolete since Gecko 2.0</span>
	 */
	static inline var EAGER_CLASSINFO = 1 << 5;
	
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
	function getInterfaces(count:{value:PRUint32}, array:Array<NsIIDPtr>) : Void;
}
