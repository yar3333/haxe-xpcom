package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIXPConnect") extern class NsIXPConnect extends NsISupports
{
	static inline var INIT_JS_STANDARD_CLASSES = 1 << 0;
	static inline var FLAG_SYSTEM_GLOBAL_OBJECT = 1 << 1;
	static inline var OMIT_COMPONENTS_OBJECT = 1 << 2;
	/**
	 * Tells <code><a href="https://developer.mozilla.org/en-US/docs/XPCOM_Interface_Reference/nsIXPConnect#updateXOWs()">updateXOWs()</a></code> to clear the scope of all of the XOWs it finds.  <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 4 / Thunderbird 3.3 / SeaMonkey 2.1)">Obsolete since Gecko 2.0</span>
	 */
	static inline var XPC_XOW_CLEARSCOPE = 1;
	
	/**
	 * Obsolete since Gecko 1.9
	 */
	var collectGarbageOnMainThreadOnly : PRBool;
	/**
	 * Read only.
	 */
	var CurrentJSStack : NsIStackFrame;
	/**
	 * Read only.
	 */
	var CurrentNativeCallContext : NsAXPCNativeCallContextPtr;
	/**
	 * Obsolete since Gecko 1.9
	 */
	var deferReleasesUntilAfterGarbageCollection : PRBool;
	var PendingException : NsIException;
	
	function addJSHolder(aHolder:VoidPtr, aTracer:NsScriptObjectTracerPtr) : Void;
	function clearAllWrappedNativeSecurityPolicies() : Void;
	function createSandbox(cx:JSContextPtr, principal:NsIPrincipal) : NsIXPConnectJSObjectHolder;
	function createStackFrameLocation(aLanguage:PRUint32, aFilename:String, aFunctionName:String, aLineNumber:PRInt32, aCaller:NsIStackFrame) : NsIStackFrame;
	function debugDump(depth:Short) : Void;
	function debugDumpEvalInJSStackFrame(aFrameNumber:PRUint32, aSourceText:String) : Void;
	function debugDumpJSStack(showArgs:PRBool, showLocals:PRBool, showThisProps:PRBool) : Void;
	function debugDumpObject(aCOMObj:NsISupports, depth:Short) : Void;
	function defineDOMQuickStubs(cx:JSContextPtr, proto:JSObjectPtr, flags:PRUint32, interfaceCount:PRUint32, interfaceArray:Array<NsIIDPtr>) : PRBool;
	function evalInSandboxObject(source:AString, cx:JSContextPtr, sandbox:NsIXPConnectJSObjectHolder, returnStringOnly:PRBool) : JSVal;
	function flagSystemFilenamePrefix(aFilenamePrefix:String, aWantNativeWrappers:PRBool) : Void;
	function GarbageCollect() : Void;
	function getCaller(aJSContext:{value:JSContextPtr}, aObject:{value:JSObjectPtr}) : Void;
	function getCOWForObject(aJSContext:JSContextPtr, aParent:JSObjectPtr, aWrappedObj:JSObjectPtr) : JSVal;
	function getDefaultSecurityManager(aManager:{value:NsIXPCSecurityManager}, flags:{value:PRUint16}) : Void;
	function getFunctionThisTranslator(aIID:NsIIDRef) : NsIXPCFunctionThisTranslator;
	function getJSObjectOfWrapper(aJSContext:JSContextPtr, aJSObj:JSObjectPtr) : JSObjectPtr;
	function getNativeOfWrapper(aJSContext:JSContextPtr, aJSObj:JSObjectPtr) : NsISupports;
	function getSecurityManagerForJSContext(aJSContext:JSContextPtr, aManager:{value:NsIXPCSecurityManager}, flags:{value:PRUint16}) : Void;
	function getWrappedNativeOfJSObject(aJSContext:JSContextPtr, aJSObj:JSObjectPtr) : NsIXPConnectWrappedNative;
	function getWrappedNativeOfNativeObject(aJSContext:JSContextPtr, aScope:JSObjectPtr, aCOMObj:NsISupports, aIID:NsIIDRef) : NsIXPConnectWrappedNative;
	function getWrappedNativePrototype(aJSContext:JSContextPtr, aScope:JSObjectPtr, aClassInfo:NsIClassInfo) : NsIXPConnectJSObjectHolder;
	function getWrapperForObject(aJSContext:JSContextPtr, aObject:JSObjectPtr, aScope:JSObjectPtr, aPrincipal:NsIPrincipal, aFilenameFlags:ULong) : JSVal;
	function getXOWForObject(aJSContext:JSContextPtr, aParent:JSObjectPtr, aWrappedObj:JSObjectPtr) : JSVal;
	function GetXPCWrappedNativeJSClassInfo(equality:{value:JSEqualityOp}) : Void;
	function holdObject(aJSContext:JSContextPtr, aObject:JSObjectPtr) : NsIXPConnectJSObjectHolder;
	function initClasses(aJSContext:JSContextPtr, aGlobalJSObj:JSObjectPtr) : Void;
	function initClassesWithNewWrappedGlobal(aJSContext:JSContextPtr, aCOMObj:NsISupports, aIID:NsIIDRef, aPrincipal:NsIPrincipal, aExtraPtr:NsISupports, aFlags:PRUint32) : NsIXPConnectJSObjectHolder;
	function JSToVariant(ctx:JSContextPtr, value:JSVal) : NsIVariant;
	function jSValToVariant(cx:JSContextPtr, aJSVal:JSValPtr) : NsIVariant;
	function moveWrappers(aJSContext:JSContextPtr, aOldScope:JSObjectPtr, aNewScope:JSObjectPtr) : Void;
	function noteJSContext(aJSContext:JSContextPtr, aCb:NsCCTraversalCallbackRef) : Void;
	function releaseJSContext(aJSContext:JSContextPtr, noGC:PRBool) : Void;
	function removeJSHolder(aHolder:VoidPtr) : Void;
	function reparentScopeAwareWrappers(aJSContext:JSContextPtr, aOldScope:JSObjectPtr, aNewScope:JSObjectPtr) : Void;
	function reparentWrappedNativeIfFound(aJSContext:JSContextPtr, aScope:JSObjectPtr, aNewParent:JSObjectPtr, aCOMObj:NsISupports) : NsIXPConnectJSObjectHolder;
	function restoreWrappedNativePrototype(aJSContext:JSContextPtr, aScope:JSObjectPtr, aClassInfo:NsIClassInfo, aPrototype:NsIXPConnectJSObjectHolder) : Void;
	function setDebugModeWhenPossible(mode:PRBool) : Void;
	function setDefaultSecurityManager(aManager:NsIXPCSecurityManager, flags:PRUint16) : Void;
	function setFunctionThisTranslator(aIID:NsIIDRef, aTranslator:NsIXPCFunctionThisTranslator) : NsIXPCFunctionThisTranslator;
	function setReportAllJSExceptions(reportAllJSExceptions:Bool) : Void;
	function setSafeJSContextForCurrentThread(cx:JSContextPtr) : Void;
	function setSecurityManagerForJSContext(aJSContext:JSContextPtr, aManager:NsIXPCSecurityManager, flags:PRUint16) : Void;
	function syncJSContexts() : Void;
	function updateXOWs(aJSContext:JSContextPtr, aObject:NsIXPConnectWrappedNative, aWay:PRUint32) : Void;
	function variantToJS(ctx:JSContextPtr, scope:JSObjectPtr, value:NsIVariant) : JSVal;
	function wrapJS(aJSContext:JSContextPtr, aJSObj:JSObjectPtr, aIID:NsIIDRef, result:{value:NsQIResult}) : Void;
	function wrapJSAggregatedToNative(aOuter:NsISupports, aJSContext:JSContextPtr, aJSObj:JSObjectPtr, aIID:NsIIDRef, result:{value:NsQIResult}) : Void;
	function wrapNative(aJSContext:JSContextPtr, aScope:JSObjectPtr, aCOMObj:NsISupports, aIID:NsIIDRef) : NsIXPConnectJSObjectHolder;
	function wrapNativeToJSVal(aJSContext:JSContextPtr, aScope:JSObjectPtr, aCOMObj:NsISupports, aCache:NsWrapperCachePtr, aIID:NsIIDPtr, aAllowWrapper:Bool, aVal:{value:JSVal}, aHolder:{value:NsIXPConnectJSObjectHolder}) : Void;
}
