package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIContentViewer") extern class NsIContentViewer extends NsISupports
{
	var container : NsISupports;
	var DOMDocument : NsIDOMDocument;
	/**
	 * Obsolete since Gecko 2.0
	 */
	var enableRendering : Bool;
	/**
	 * Get the history entry that this viewer will save itself into when destroyed. Can return null. Read only.
	 */
	var historyEntry : NsISHEntry;
	/**
	 * Read only.
	 */
	var isTabModalPromptAllowed : Bool;
	/**
	 * Read only. Native code only! 
	 * Note: Prior to Gecko 10.0 (Firefox 10.0 / Thunderbird 10.0 / SeaMonkey 2.7), this attribute was part of nsIDocumentViewer.
	 */
	var presContext : NsPresContextPtr;
	/**
	 * Read only. Native code only! 
	 * Note: Prior to Gecko 10.0 (Firefox 10.0 / Thunderbird 10.0 / SeaMonkey 2.7), this attribute was part of nsIDocumentViewer.
	 */
	var presShell : NsIPresShellPtr;
	/**
	 * The previous content viewer, which has been closed but not destroyed. Native code only!
	 */
	var previousViewer : NsIContentViewer;
	var sticky : Bool;
	
	function clearHistoryEntry() : Void;
	function close(historyEntry:NsISHEntry) : Void;
	function destroy() : Void;
	function findContainerView() : NsIViewPtr;
	function getBounds(aBounds:NsIntRectRef) : Void;
	function getDocument() : NsIDocumentPtr;
	function hide() : Void;
	function init(aParentWidget:NsIWidgetPtr, aBounds:NsIntRectRef) : Void;
	function loadComplete(aStatus:ULong) : Void;
	function loadStart(aDoc:NsISupports) : Void;
	function move(aX:Long, aY:Long) : Void;
	function open(aState:NsISupports, aSHEntry:NsISHEntry) : Void;
	function pageHide(isUnload:Bool) : Void;
	function permitUnload(?aCallerClosesWindow:Bool) : Bool;
	function requestWindowClose() : Bool;
	function resetCloseWindow() : Void;
	function setBounds(aBounds:NsIntRectRef) : Void;
	function setDocumentInternal(aDocument:NsIDocumentPtr, aForceReuseInnerWindow:Bool) : Void;
	function setNavigationTiming(aTiming:NsDOMNavigationTimingPtr) : Void;
	function setPageMode(aPageMode:Bool, aPrintSettings:NsIPrintSettings) : Void;
	function show() : Void;
	function stop() : Void;
	function unload() : Void;
}
