package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.mozIJSSubScriptLoader") extern class MozIJSSubScriptLoader extends NsISupports
{
	public static inline function getService() : MozIJSSubScriptLoader return Components.classes[cast "@mozilla.org/moz/jssubscript-loader;1"].getService(Components.interfaces.mozIJSSubScriptLoader);
	
	function loadSubScript(url:Wstring, ?targetObj:Dynamic, ?charset:String) : Void;
}
