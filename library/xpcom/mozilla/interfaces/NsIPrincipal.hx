package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPrincipal") extern class NsIPrincipal extends NsISerializable
{
	static inline var ENABLE_DENIED = 1;
	static inline var ENABLE_UNKNOWN = 2;
	static inline var ENABLE_WITH_USER_PERMISSION = 3;
	static inline var ENABLE_GRANTED = 4;
	
	/**
	 * The certificate associated with this principal, if any. If there isn't one, this will return null. Getting this attribute never throws. Read only.
	 */
	var certificate : NsISupports;
	/**
	 * The fingerprint ID of this principal's certificate. Throws if there is no certificate associated with this principal. Read only. Obsolete since Gecko 1.8
	 */
	var certificateID : String;
	/**
	 * The common name for the certificate. This pertains to the certificate authority organization. Throws if there is no certificate associated with this principal. Obsolete since Gecko 1.8
	 */
	var commonName : String;
	/**
	 * A Content Security Policy associated with this principal. Native code only!
	 */
	var csp : NsIContentSecurityPolicy;
	/**
	 * The domain URI to which this principal pertains. This is congruent with HTMLDocument.domain, and may be null. Setting this has no effect on the URI. Native code only!
	 */
	var domain : NsIURI;
	/**
	 * The fingerprint ID of this principal's certificate. Throws if there is no certificate associated with this principal. Read only.
	 */
	var fingerprint : AUTF8String;
	/**
	 * Whether this principal is associated with a certificate. Read only.
	 */
	var hasCertificate : Bool;
	/**
	 * Returns a hash value for the principal. Read only. Native code only!
	 */
	var hashValue : ULong;
	/**
	 * The origin of this principal's codebase URI. An origin is defined as: scheme + host + port. Read only.
	 */
	var origin : String;
	/**
	 * The pretty name for the certificate. This sort of (but not really) identifies the subject of the certificate (the entity that stands behind the certificate). Note that this may be empty; prefer to get the certificate itself and get this information from it, since that may provide more information.
	 * Throws if there is no certificate associated with this principal. Read only.
	 */
	var prettyName : AUTF8String;
	/**
	 * The domain security policy of the principal. Native code only!
	 */
	var securityPolicy : VoidPtr;
	/**
	 * The subject name for the certificate. This actually identifies the subject of the certificate. This may well not be a string that would mean much to a typical user on its own (e.g. it may have a number of different names all concatenated together with some information on what they mean in between).
	 * Throws if there is no certificate associated with this principal. Read only.
	 */
	var subjectName : AUTF8String;
	/**
	 * The codebase URI to which this principal pertains. This is generally the document URI. Read only.
	 * Note: This wasn't accessible by scripts prior to Gecko 2.0.
	 */
	var URI : NsIURI;
	
	function canEnableCapability(capability:String) : Short;
	function checkMayLoad(uri:NsIURI, report:Bool) : Void;
	function disableCapability(capability:String, annotation:{value:VoidPtr}) : Void;
	function enableCapability(capability:String, annotation:{value:VoidPtr}) : Void;
	function equals(other:NsIPrincipal) : Bool;
	function getJSPrincipals(cx:JSContext) : JSPrincipals;
	function getPreferences(prefBranch:{value:String}, id:{value:String}, subjectName:{value:String}, grantedList:{value:String}, deniedList:{value:String}, isTrusted:{value:Bool}) : Void;
	function isCapabilityEnabled(capability:String, annotation:VoidPtr) : Bool;
	function revertCapability(capability:String, annotation:{value:VoidPtr}) : Void;
	function setCanEnableCapability(capability:String, canEnable:Short) : Void;
	function subsumes(other:NsIPrincipal) : Bool;
}
