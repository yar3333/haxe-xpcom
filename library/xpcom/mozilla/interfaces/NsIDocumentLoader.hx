package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIDocumentLoader") extern class NsIDocumentLoader extends NsISupports
{
	public static inline function createInstance() : NsIDocumentLoader return Components.Constructor("@mozilla.org/docloaderservice;1", Components.interfaces.nsIDocumentLoader);
	
	/**
	 * Read only.
	 */
	var container : NsISupports;
	/**
	 * Read only.
	 */
	var documentChannel : NsIChannel;
	/**
	 * Read only.
	 */
	var loadGroup : NsILoadGroup;
	
	function clearParentDocLoader() : Void;
	function createDocumentLoader(anInstance:NsIDocumentLoader) : Void;
	function destroy() : Void;
	function fireOnLocationChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aUri:NsIURI) : Void;
	function fireOnStatusChange(aWebProgress:NsIWebProgress, aRequest:NsIRequest, aStatus:Nsresult, aMessage:Wstring) : Void;
	function getContentViewerContainer(aDocumentID:NsISupports, aResult:NsIContentViewerContainer) : Void;
	function getLoadGroup() : NsILoadGroup;
	function isBusy() : Bool;
	function stop() : Void;
}
