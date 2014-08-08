package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsISHEntry") extern class NsISHEntry extends NsIHistoryEntry
{
	public static inline function createInstance() : NsISHEntry return Components.Constructor("@mozilla.org/browser/session-history-entry;1", Components.interfaces.nsISHEntry);
	
	/**
	 * Set and get the cache key for the entry.
	 */
	var cacheKey : NsISupports;
	/**
	 * Indicates the content-type of the document that this is a session history entry for.
	 */
	var contentType : ACString;
	/**
	 * Content viewer, for fast restoration of presentation.
	 */
	var contentViewer : NsIContentViewer;
	/**
	 * An integer that should be the same for two entries attached to the same docshell if and only if the two entries are entries for the same document. In practice, two entries A and B will have the same docIdentifier if we arrived at B by clicking an anchor link in A or if B was created by A's calling history.pushState().
	 */
	var docIdentifier : ULongLong;
	/**
	 * The history ID of the docshell.
	 */
	var docshellID : ULongLong;
	/**
	 * DOM Document. Obsolete since Gecko 1.8
	 */
	var document : NsIDOMDocument;
	/**
	 * Indicates whether the page is already expired in cache.
	 */
	var expirationStatus : Bool;
	/**
	 * An ID to help identify this entry from others during subframe navigation.
	 */
	var ID : ULong;
	/**
	 * LayoutHistoryState for scroll position and form values.
	 */
	var layoutHistoryState : NsILayoutHistoryState;
	/**
	 * The loadType for this entry. This is typically loadHistory except when reload is pressed, it has the appropriate reload flag.
	 */
	var loadType : ULong;
	/**
	 * Get the owner, if any, that was associated with the channel that the document that was loaded to create this history entry came from.
	 */
	var owner : NsISupports;
	/**
	 * An integer that should be the same for two entries attached to the same docshell only if the two entries are entries for the same page in the sense that one could go from the state represented by one to the state represented by the other simply by scrolling (so the entries are separated by an anchor traversal or a subframe navigation in some other frame).  Obsolete since Gecko 6.0
	 */
	var pageIdentifier : ULong;
	/**
	 * Parent of this entry.
	 */
	var parent : NsISHEntry;
	/**
	 * Post Data for the document.
	 */
	var postData : NsIInputStream;
	/**
	 * Referrer URI.
	 */
	var referrerURI : NsIURI;
	/**
	 * Saved refresh URI list for the content viewer.
	 */
	var refreshURIList : NsISupportsArray;
	/**
	 * Indicate whether layoutHistoryState should be saved.
	 */
	var saveLayoutStateFlag : Bool;
	/**
	 * Get/set data associated with this history state via a pushState() call, serialized using structured clone. (Prior to Gecko 6.0 returned a JSON encoded string.)
	 */
	var stateData : NsIStructuredCloneContainer;
	/**
	 * Whether the content viewer is marked "sticky"
	 */
	var sticky : Bool;
	/**
	 * Saved state of the global window object.
	 */
	var windowState : NsISupports;
	
	function addChildShell(shell:NsIDocShellTreeItem) : Void;
	function childShellAt(index:Long) : NsIDocShellTreeItem;
	function clearChildShells() : Void;
	function clone() : NsISHEntry;
	function create(URI:NsIURI, title:AString, inputStream:NsIInputStream, layoutHistoryState:NsILayoutHistoryState, cacheKey:NsISupports, contentType:ACString, owner:NsISupports, docshellID:ULongLong, dynamicCreation:Bool) : Void;
	function forgetEditorData() : NsDocShellEditorDataPtr;
	function getAnyContentViewer(ownerEntry:NsISHEntry) : NsIContentViewer;
	function getScrollPosition(x:Long, y:Long) : Void;
	function getViewerBounds(bounds:NsIntRect) : Void;
	function hasDetachedEditor() : Bool;
	function hasDynamicallyAddedChild() : Bool;
	function isDynamicallyAdded() : Bool;
	function setEditorData(aData:NsDocShellEditorDataPtr) : Void;
	function setIsSubFrame(aFlag:Bool) : Void;
	function setScrollPosition(x:Long, y:Long) : Void;
	function setTitle(aTitle:AString) : Void;
	function setUniqueDocIdentifier() : Void;
	function setURI(aURI:NsIURI) : Void;
	function setViewerBounds(bounds:NsIntRect) : Void;
	function syncPresentationState() : Void;
}
