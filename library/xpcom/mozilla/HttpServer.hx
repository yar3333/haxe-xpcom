package xpcom.mozilla;

class HttpServer
{
	private static function __init__() : Void
	{
		haxe.macro.Compiler.includeFile("xpcom/mozilla/HttpServer.js");
	}
	
	public static function createInstance(?dump:String->Void) : xpcom.mozilla.interfaces.NsIHttpServer
	{
		untyped __js__("if (typeof xpcom_mozilla_HttpServer_Class == 'undefined') window.xpcom_mozilla_HttpServer_Class = (new xpcom_mozilla_HttpServerComponent(dump)).HttpServer");
		return untyped __js__("new xpcom_mozilla_HttpServer_Class()");
	}
}
