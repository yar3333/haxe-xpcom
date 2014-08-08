package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPluginHost") extern class NsIPluginHost extends NsISupports
{
	/**
	 * Read only. Native code only!
	 */
	var pluginCount : ULong;
	
	function createTempFileToPost(aPostDataURL:String) : NsIFile;
	function createTmpFileToPost(aPostDataURL:String, aTmpFileName:String) : Void;
	function deletePluginNativeWindow(aPluginNativeWindow:NsPluginNativeWindowPtr) : Void;
	function destroy() : Void;
	function findProxyForURL(aURL:String, aResult:String) : Void;
	function getPlugin(aMimeType:String) : NsIPlugin;
	function getPluginCount(aPluginCount:ULong) : Void;
	function getPluginFactory(aMimeType:String) : NsIPlugin;
	function getPluginName(aInstance:NsIPluginInstance, aPluginName:String) : Void;
	function getPluginTagForInstance(aInstance:NsIPluginInstance) : NsIPluginTag;
	function getPluginTags(?aPluginCount:ULong, aResults:Array<NsIPluginTag>) : Void;
	function handleBadPlugin(aLibrary:PRLibraryPtr, instance:NsIPluginInstance) : Void;
	function init() : Void;
	function instantiateDummyJavaPlugin(aOwner:NsIPluginInstanceOwner) : Void;
	function instantiateEmbeddedPlugin(aMimeType:String, aURL:NsIURI, aOwner:NsIPluginInstanceOwner) : Void;
	function instantiateEmbededPlugin(aMimeType:String, aURL:NsIURI, aOwner:NsIPluginInstanceOwner) : Void;
	function instantiateFullPagePlugin(aMimeType:String, aURI:NsIURI, aOwner:NsIPluginInstanceOwner, aStreamListener:NsIStreamListener) : Void;
	function instantiatePluginForChannel(aChannel:NsIChannel, aOwner:NsIPluginInstanceOwner) : NsIStreamListener;
	function isPluginEnabledForExtension(aExtension:String, aMimeType:ConstCharStarRef) : Void;
	function isPluginEnabledForType(aMimeType:String) : Void;
	function loadPlugins() : Void;
	function newPluginNativeWindow(aPluginNativeWindow:NsPluginNativeWindowPtr) : Void;
	function parsePostBufferToFixHeaders(aInPostData:String, aInPostDataLen:ULong, aOutPostData:String, aOutPostDataLen:ULong) : Void;
	function reloadPlugins(reloadPages:Bool) : Void;
	function setIsScriptableInstance(aInstance:NsIPluginInstance, aScriptable:Bool) : Void;
	function setUpPluginInstance(aMimeType:String, aURL:NsIURI, aOwner:NsIPluginInstanceOwner) : Void;
	function stopPluginInstance(aInstance:NsIPluginInstance) : Void;
	function UserAgent(resultingAgentString:NativeChar) : Void;
}
