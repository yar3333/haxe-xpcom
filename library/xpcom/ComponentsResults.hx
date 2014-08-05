package xpcom;

extern class ComponentsResults
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
	
	function Sandbox(principal:Dynamic, ?options:Dynamic) : xpcom.types.Sandbox;
	function evalInSandbox(jscode:String, sandbox:xpcom.types.Sandbox) : Dynamic;
}
