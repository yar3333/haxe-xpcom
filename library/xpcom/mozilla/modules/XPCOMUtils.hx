package xpcom.mozilla.modules;

import xpcom.mozilla.NsICategoryManager;
import xpcom.mozilla.NsIModule;

@:native("XPCOMUtils") extern class XPCOMUtils
{
	static function __init__()
	{
		Components.utils.import_("resource://gre/modules/XPCOMUtils.jsm");
	}
	
	static var categoryManager : NsICategoryManager;
	
	static function defineLazyGetter(aObject:Dynamic, aName:String, aLambda:Dynamic) : Void;
	static function defineLazyModuleGetter(aObject:Dynamic, aName:String, aResource:String, ?aSymbol:String) : Void;
	static function defineLazyServiceGetter(aObject:Dynamic, aName:String, aContract:Dynamic, aInterfaceName:String) : Void;
	
	#if obsolete
	/**
	 * Obsolete since Gecko 2.0
	 */
	static generateModule(componentsArray:Array<Dynamic>, postRegister:Dynamic, preUnregister:Dynamic) : NsIModule; 
	#end
	
	static function generateNSGetFactory(componentsArray:Array<Dynamic>) : Void;
	
	#if obsolete
	/**
	 * Obsolete since Gecko 2.0
	 */
	static function generateNSGetModule(componentsArray:Array<Dynamic>, postRegister:Dynamic, preUnregister:Dynamic) : Void;
	#end
	
	static function generateCI(classInfo:Dynamic) : Void;
	static function generateQI(interfaces:Array<Dynamic>) : Void;
	static importRelative(that:Dynamic, path:String, scope:String) : Void;
}
