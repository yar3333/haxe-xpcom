package xpcom;

import xpcom.mozilla.interfaces.NsIClassInfo;
import xpcom.mozilla.interfaces.NsICycleCollectorListener;
import xpcom.mozilla.interfaces.NsIPrincipal;
import xpcom.mozilla.interfaces.NsIStackFrame;
import xpcom.mozilla.interfaces.NsISupports;
import xpcom.types.*;

@:native("Components") extern class Components
{
	static var utils(default, never) : Utils;
	static var results(default, never) : Results;
	static var interfaces(default, never) : Dynamic;
	static var classes(default, never) : Array<Dynamic>;
	static var stack : NsIStackFrame;
	
	static function Constructor(url:String, iterfaceName:String, ?initMethodName:String) : Dynamic;
}

private extern class Results
{
	var NS_BASE_STREAM_CLOSED(default, never) : Int;
	var NS_BASE_STREAM_WOULD_BLOCK(default, never) : Int;
	var NS_BINDING_ABORTED(default, never) : Int;
	var NS_ERROR_ALREADY_INITIALIZED(default, never) : Int;
	var NS_ERROR_ILLEGAL_VALUE(default, never) : Int;
	var NS_ERROR_INVALID_ARG(default, never) : Int;
	var NS_ERROR_NO_INTERFACE(default, never) : Int;
	var NS_ERROR_NOT_AVAILABLE(default, never) : Int;
	var NS_ERROR_NOT_IMPLEMENTED(default, never) : Int;
	var NS_ERROR_NOT_INITIALIZED(default, never) : Int;
	var NS_ERROR_NULL_POINTER(default, never) : Int;
	var NS_ERROR_UNEXPECTED(default, never) : Int;
	var NS_OK(default, never) : Int;
}

private extern class Utils
{
	/* reportError is designed to be called from JavaScript only.
	 *
	 * It will report a JS Error object to the JS console, and return. It
	 * is meant for use in exception handler blocks which want to "eat"
	 * an exception, but still want to report it to the console.
	 *
	 * It must be called with one param, usually an object which was caught by
	 * an exception handler.  If it is not a JS error object, the parameter
	 * is converted to a string and reported as a new error.
	 */
	function reportError(error:JSVal) : Void;

	function Sandbox() : Dynamic;

	/*
	 * evalInSandbox is designed to be called from JavaScript only.
	 *
	 * evalInSandbox evaluates the provided source string in the given sandbox.
	 * It returns the result of the evaluation to the caller.
	 *
	 * var s = new C.u.Sandbox("http://www.mozilla.org");
	 * var res = C.u.evalInSandbox("var five = 5; 2 + five", s);
	 * var outerFive = s.five;
	 * s.seven = res;
	 * var thirtyFive = C.u.evalInSandbox("five * seven", s);
	 */
	function evalInSandbox(source:AString, sandbox:JSVal, ?version:JSVal, ?filename:AUTF8String, ?lineNo:Int) : JSVal;

	/*
	 * getSandboxAddonId is designed to be called from JavaScript only.
	 *
	 * getSandboxAddonId retrieves the add-on ID associated with
	 * a sandbox object. It will return undefined if there
	 * is no add-on ID attached to the sandbox.
	 *
	 * var s = C.u.Sandbox(..., { addonId: "123" });
	 * var id = C.u.getSandboxAddonId(s);
	 */
	function getSandboxAddonId(sandbox:JSVal) : JSVal;

	/*
	 * getSandboxMetadata is designed to be called from JavaScript only.
	 *
	 * getSandboxMetadata retrieves the metadata associated with
	 * a sandbox object. It will return undefined if there
	 * is no metadata attached to the sandbox.
	 *
	 * var s = C.u.Sandbox(..., { metadata: "metadata" });
	 * var metadata = C.u.getSandboxMetadata(s);
	 */
	function getSandboxMetadata(sandbox:JSVal) : JSVal;

	/*
	 * setSandboxMetadata is designed to be called from JavaScript only.
	 *
	 * setSandboxMetadata sets the metadata associated with
	 * a sandbox object.
	 *
	 * Note that the metadata object will be copied before being used.
	 * The copy will be performed using the structured clone algorithm.
	 * Note that this algorithm does not support reflectors and
	 * it will throw if it encounters them.
	 */
	function setSandboxMetadata(sandbox:JSVal, metadata:JSVal) : Void;
	
	/*
	 * import is designed to be called from JavaScript only.
	 *
	 * Synchronously loads and evaluates the js file located at
	 * 'registryLocation' with a new, fully privileged global object.
	 *
	 * If 'targetObj' is specified and equal to null, returns the
	 * module's global object. Otherwise (if 'targetObj' is not
	 * specified, or 'targetObj' is != null) looks for a property
	 * 'EXPORTED_SYMBOLS' on the new global object. 'EXPORTED_SYMBOLS'
	 * is expected to be an array of strings identifying properties on
	 * the global object.  These properties will be installed as
	 * properties on 'targetObj', or, if 'targetObj' is not specified,
	 * on the caller's global object. If 'EXPORTED_SYMBOLS' is not
	 * found, an error is thrown.
	 *
	 * @param resourceURI A resource:// URI string to load the module from.
	 * @param targetObj  the object to install the exported properties on.
	 *        If this parameter is a primitive value, this method throws
	 *        an exception.
	 * @returns the module code's global object.
	 *
	 * The implementation maintains a hash of registryLocation->global obj.
	 * Subsequent invocations of importModule with 'registryLocation'
	 * pointing to the same file will not cause the module to be re-evaluated,
	 * but the symbols in EXPORTED_SYMBOLS will be exported into the
	 * specified target object and the global object returned as above.
	 *
	 * (This comment is duplicated from xpcIJSModuleLoader.)
	 */
	inline function importGlobally(url:String) : Dynamic
	{
		return untyped this["import"](url);
	}
	
	/*
	 * import is designed to be called from JavaScript only.
	 *
	 * Synchronously loads and evaluates the js file located at
	 * 'registryLocation' with a new, fully privileged global object.
	 *
	 * If 'targetObj' is specified and equal to null, returns the
	 * module's global object. Otherwise (if 'targetObj' is not
	 * specified, or 'targetObj' is != null) looks for a property
	 * 'EXPORTED_SYMBOLS' on the new global object. 'EXPORTED_SYMBOLS'
	 * is expected to be an array of strings identifying properties on
	 * the global object.  These properties will be installed as
	 * properties on 'targetObj', or, if 'targetObj' is not specified,
	 * on the caller's global object. If 'EXPORTED_SYMBOLS' is not
	 * found, an error is thrown.
	 *
	 * @param resourceURI A resource:// URI string to load the module from.
	 * @param targetObj  the object to install the exported properties on.
	 *        If this parameter is a primitive value, this method throws
	 *        an exception.
	 * @returns the module code's global object.
	 *
	 * The implementation maintains a hash of registryLocation->global obj.
	 * Subsequent invocations of importModule with 'registryLocation'
	 * pointing to the same file will not cause the module to be re-evaluated,
	 * but the symbols in EXPORTED_SYMBOLS will be exported into the
	 * specified target object and the global object returned as above.
	 *
	 * (This comment is duplicated from xpcIJSModuleLoader.)
	 */
	inline function importToNamespace(url:String, namespace:Dynamic) : Dynamic
	{
		return untyped this["import"](url, namespace);
	}
	
	/**
	 * Returns true if the js file located at 'registryLocation' location has
	 * been loaded previously via the import method above. Returns false
	 * otherwise.
	 *
	 * @param resourceURI A resource:// URI string representing the location of
	 *        the js file to be checked if it is already loaded or not.
	 * @returns boolean, true if the js file has been loaded via import. false
	 *          otherwise
	 */
	function isModuleLoaded(aResourceURI:AUTF8String) : Bool;
	
	/*
	 * Unloads the JS module at 'registryLocation'. Existing references to the
	 * module will continue to work but any subsequent import of the module will
	 * reload it and give new reference. If the JS module hasn't yet been
	 * imported then this method will do nothing.
	 *
	 * @param resourceURI A resource:// URI string to unload the module from.
	 */
	function unload(registryLocation:AUTF8String) : Void;
	
	/*
	 * Imports global properties (like DOM constructors) into the scope, defining
	 * them on the caller's global. aPropertyList should be an array of property
	 * names.
	 *
	 * See xpc::GlobalProperties::Parse for the current list of supported
	 * properties.
	 */
	function importGlobalProperties(aPropertyList:JSVal) : Void;
	
	/*
	 * To be called from JS only.
	 *
	 * Return a weak reference for the given JS object.
	 */
	function getWeakReference(obj:JSVal) : Dynamic; // return XpcIJSWeakReference
	
	/*
	 * To be called from JS only.
	 *
	 * Force an immediate garbage collection cycle.
	 */
	function forceGC() : Void;
	
	/*
	 * To be called from JS only.
	 *
	 * Force an immediate cycle collection cycle.
	 */
	function forceCC(aListener:NsICycleCollectorListener) : Void;
	
	/*
	 * To be called from JS only.
	 *
	 * If any incremental CC is in progress, finish it. For testing.
	 */
	function finishCC() : Void;
	
	/*
	 * To be called from JS only.
	 *
	 * Do some cycle collector work, with the given work budget.
	 * The cost of calling Traverse() on a single object is set as 1.
	 * For testing.
	 */
	function ccSlice(budget:Int) : Void;
	
	/*
	 * To be called from JS only.
	 *
	 * Return the longest cycle collector slice time since the last
	 * time clearMaxCCTime() was called.
	 */
	function getMaxCCSliceTimeSinceClear() : Int;
	
	/*
	 * To be called from JS only.
	 *
	 * Reset the internal max slice time value used for
	 * getMaxCCSliceTimeSinceClear().
	 */
	function clearMaxCCTime() : Void;
	
	/*
	 * To be called from JS only.
	 *
	 * Force an immediate shrinking garbage collection cycle.
	 */
	function forceShrinkingGC() : Void;
	
	/*
	 * Schedule a garbage collection cycle for a point in the future when no JS
	 * is running. Call the provided function once this has occurred.
	 */
	function schedulePreciseGC(callback:{ callback:Void->Void }) : Void;
	
	/*
	 * Schedule a shrinking garbage collection cycle for a point in the future
	 * when no JS is running. Call the provided function once this has occured.
	 */
	function schedulePreciseShrinkingGC(callback:{ callback:Void->Void }) : Void;
	
	/*
	 * In a debug build, unlink any ghost windows. This is only for debugging
	 * leaks, and can cause bad things to happen if called.
	 */
	function unlinkGhostWindows() : Void;
	
	function getJSTestingFunctions() : JSVal;
	
	/*
	 * To be called from JS only.
	 *
	 * Call 'func', using the provided stack as the async stack responsible
	 * for the call, and propagate its return value or the exception it throws.
	 * The function is called with no arguments, and 'this' is 'undefined'.
	 *
	 * The code in the function will see the given stack frame as the
	 * asyncCaller of its own stack frame, instead of the current caller.
	 */
	function callFunctionWithAsyncStack(func:JSVal, stack:NsIStackFrame, asyncCause:AString) : JSVal;
	
	/*
	 * To be called from JS only.
	 *
	 * Returns the global object with which the given object is associated.
	 *
	 * @param obj The JavaScript object whose global is to be gotten.
	 * @return the corresponding global.
	 */
	function getGlobalForObject(obj:JSVal) : JSVal;
	
	/*
	 * To be called from JS only.
	 *
	 * Returns the true if the object is a (scripted) proxy.
	 * NOTE: Security wrappers are unwrapped first before the check.
	 */
	function isProxy(vobject:JSVal) : Bool;
	
	/*
	 * To be called from JS only.
	 *
	 * Instead of simply wrapping a function into another compartment,
	 * this helper function creates a native function in the target
	 * compartment and forwards the call to the original function.
	 * That call will be different than a regular JS function call in
	 * that, the |this| is left unbound, and all the non-native JS
	 * object arguments will be cloned using the structured clone
	 * algorithm.
	 * The return value is the new forwarder function, wrapped into
	 * the caller's compartment.
	 * The 3rd argument is an optional options object:
	 * - defineAs: the name of the property that will
	 *             be set on the target scope, with
	 *             the forwarder function as the value.
	 */
	function exportFunction(vfunction:JSVal, vscope:JSVal, ?voptions:JSVal) : JSVal;
	
	/*
	 * To be called from JS only.
	 *
	 * Returns an object created in |vobj|'s compartment.
	 * If defineAs property on the options object is a non-null ID,
	 * the new object will be added to vobj as a property. Also, the
	 * returned new object is always automatically waived (see waiveXrays).
	 */
	function createObjectIn(vobj:JSVal, ?voptions:JSVal) : JSVal;
	
	/*
	 * To be called from JS only.
	 *
	 * Ensures that all functions come from vobj's scope (and aren't cross
	 * compartment wrappers).
	 */
	function makeObjectPropsNormal(vobj:JSVal) : Void;
	
	/**
	 * Determines whether this object is backed by a DeadObjectProxy.
	 *
	 * Dead-wrapper objects hold no other objects alive (they have no outgoing
	 * reference edges) and will throw if you touch them (e.g. by
	 * reading/writing a property).
	 */
	function isDeadWrapper(obj:JSVal) : Bool;
	
	/**
	 * Determines whether this object is a cross-process wrapper.
	 */
	function isCrossProcessWrapper(obj:JSVal) : Bool;
	
	/**
	 * CPOWs can have user data attached to them. This data originates
	 * in the local process via the
	 * nsIRemoteTagService.getRemoteObjectTag method. It's sent along
	 * with the CPOW to the remote process, where it can be fetched
	 * with this function, getCrossProcessWrapperTag.
	 */
	function getCrossProcessWrapperTag(obj:JSVal) : ACString;
	
	/*
	 * To be called from JS only. This is for Gecko internal use only, and may
	 * disappear at any moment.
	 *
	 * Forces a recomputation of all wrappers in and out of the compartment
	 * containing |vobj|. If |vobj| is not an object, all wrappers system-wide
	 * are recomputed.
	 */
	function recomputeWrappers(?obj:JSVal) : Void;
	
	/*
	 * To be called from JS only. This is for Gecko internal use only, and may
	 * disappear at any moment.
	 *
	 * Enables Xray vision for same-compartment access for the compartment
	 * indicated by |vscope|. All outgoing wrappers are recomputed.
	 */
	function setWantXrays(vscope:JSVal) : Void;

	/*
	 * For gecko internal automation use only. Calling this in production code
	 * would result in security vulnerabilities, so it will crash if used outside
	 * of automation.
	 */
	function forcePermissiveCOWs() : Void;
	
	/*
	 * Forces the usage of a privileged |Components| object for a potentially-
	 * unprivileged scope. This will crash if used outside of automation.
	 */
	function forcePrivilegedComponentsForScope(vscope:JSVal) : Void;
	
	/*
	 * This seemingly-paradoxical API allows privileged code to explicitly give
	 * unprivileged code a reference to its own Components object (whereas it's
	 * normally hidden away on a scope chain visible only to XBL methods). See
	 * also SpecialPowers.getComponents.
	 */
	function getComponentsForScope(vscope:JSVal) : JSVal;
	
	/*
	 * Dispatches a runnable to the current/main thread. If |scope| is passed,
	 * the runnable will be dispatch in the compartment of |scope|, which
	 * affects which error reporter gets called.
	 */
	function dispatch(runnable:JSVal, ?scope:JSVal) : Void;

	/*
	 * To be called from JS only.
	 *
	 * These are the set of JSContext options that privileged script
	 * is allowed to control for the purposes of testing.  These
	 * options should be kept in sync with what's controllable in the
	 * jsshell and by setting prefs in nsJSEnvironment.
	 *
	 * NB: Assume that getting any of these attributes is relatively
	 * cheap, but setting any of them is relatively expensive.
	 */
	var strict(default, null) : Bool; // attribute
	
	var werror(default, null) : Bool; // attribute
	
	var strict_mode(default, null) : Bool; // attribute
	
	var ion(default, null) : Bool; // attribute
	
	function setGCZeal(zeal:Int) : Void;
	
	function nukeSandbox(obj:JSVal) : Void;
	
	/*
	 * API to dynamically block script for a given global. This takes effect
	 * immediately, unlike other APIs that only affect newly-created globals.
	 *
	 * The machinery here maintains a counter, and allows script only if each
	 * call to blockScriptForGlobal() has been matched with a call to
	 * unblockScriptForGlobal(). The caller _must_ make sure never to call
	 * unblock() more times than it calls block(), since that could potentially
	 * interfere with another consumer's script blocking.
	 */
	function blockScriptForGlobal(global:JSVal) : Void;
	
	function unblockScriptForGlobal(global:JSVal) : Void;
	
	/**
	 * Check whether the given object is an XrayWrapper.
	 */
	function isXrayWrapper(obj:JSVal) : Bool;
	
	/**
	 * Waive Xray on a given value. Identity op for primitives.
	 */
	function waiveXrays(aVal:JSVal) : JSVal;
	
	/**
	 * Strip off Xray waivers on a given value. Identity op for primitives.
	 */
	function unwaiveXrays(aVal:JSVal) : JSVal;
	
	/**
	 * Gets the name of the JSClass of the object.
	 *
	 * if |aUnwrap| is true, all wrappers are unwrapped first. Unless you're
	 * specifically trying to detect whether the object is a proxy, this is
	 * probably what you want.
	 */
	function getClassName(aObj:JSVal, aUnwrap:Bool) : String;
	
	/**
	 * Get a DOM classinfo for the given classname.  Only some class
	 * names are supported.
	 */
	function getDOMClassInfo(aClassName:AString) : NsIClassInfo;
	
	/**
	 * Gets the incument global for the execution of this function. For internal
	 * and testing use only.
	 *
	 * If |callback| is passed, it is invoked with the incumbent global as its
	 * sole argument. This allows the incumbent global to be measured in callback
	 * environments with no scripted frames on the stack.
	 */
	function getIncumbentGlobal(?callback:JSVal) : JSVal;
	
	/**
	 * Forces the generation of an XPCWrappedJS for a given object. For internal
	 * and testing use only. This is only useful to set up wrapper map conditions
	 * for a testcase. The return value is not an XPCWrappedJS itself, but an
	 * opaque nsISupports holder that keeps the underlying XPCWrappedJS alive.
	 *
	 * if |scope| is passed, the XPCWrappedJS is generated in the scope of that object.
	 */
	function generateXPCWrappedJS(obj:JSVal, ?scope:JSVal) : NsISupports;
	
	/**
		* Retrieve the last time, in microseconds since epoch, that a given
		* watchdog-related event occured.
		*
		* Valid categories:
		*   "RuntimeStateChange"      - Runtime switching between active and inactive states
		*   "WatchdogWakeup"          - Watchdog waking up from sleeping
		*   "WatchdogHibernateStart"  - Watchdog begins hibernating
		*   "WatchdogHibernateStop"   - Watchdog stops hibernating
		*/
	function getWatchdogTimestamp(aCategory:AString) : PRTime;

	function getJSEngineTelemetryValue() : JSVal;
	
	/*
	 * Clone an object into a scope.
	 * The 3rd argument is an optional options object:
	 * - cloneFunctions: boolean. If true, functions in the value are
	 *   wrapped in a function forwarder that appears to be a native function in
	 *   the content scope. Defaults to false.
	 * - wrapReflectors: boolean. If true, DOM objects are passed through the
	 *   clone directly with cross-compartment wrappers. Otherwise, the clone
	 *   fails when such an object is encountered. Defaults to false.
	 */
	function cloneInto(value:JSVal, scope:JSVal, ?options:JSVal) : JSVal;
	
	/*
	 * When C++-Implemented code does security checks, it can generally query
	 * the subject principal (i.e. the principal of the most-recently-executed
	 * script) in order to determine the responsible party. However, when an API
	 * is implemented in JS, this doesn't work - the most-recently-executed
	 * script is always the System-Principaled API implementation. So we need
	 * another mechanism.
	 *
	 * Hence the notion of the "WebIDL Caller". If the current Entry Script on
	 * the Script Settings Stack represents the invocation of JS-implemented
	 * WebIDL, this API returns the principal of the caller at the time
	 * of invocation. Otherwise (i.e. outside of JS-implemented WebIDL), this
	 * function throws. If it throws, you probably shouldn't be using it.
	 */
	function getWebIDLCallerPrincipal() : NsIPrincipal;
	
	/*
	 * Gets the principal of a script object, after unwrapping any cross-
	 * compartment wrappers.
	 */
	function getObjectPrincipal(obj:JSVal) : NsIPrincipal;
	
	/*
	 * Gets the URI or identifier string associated with an object's
	 * compartment (the same one used by the memory reporter machinery).
	 *
	 * Unwraps cross-compartment wrappers first.
	 *
	 * The string formats and values may change at any time. Do not depend on
	 * this from addon code.
	 */
	function getCompartmentLocation(obj:JSVal) : ACString;
	
	/**
	 * @param	interposition NsIAddonInterposition
	 */
	function setAddonInterposition(addonId:ACString, interposition:Dynamic) : Void;
	
	/*
	 * Enables call interpositions from addon scopes to any functions in the scope of |target|.
	 */
	function setAddonCallInterposition(target:JSVal) : Void;
	
	/*
	 * Return a fractional number of milliseconds from process
	 * startup, measured with a monotonic clock.
	 */
	function now() : Float;
}