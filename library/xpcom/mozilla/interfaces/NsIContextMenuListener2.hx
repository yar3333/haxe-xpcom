package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

/* THIS IS A PUBLIC EMBEDDING API */

/**
 * nsIContextMenuListener2
 *
 * This is an extended version of nsIContextMenuListener
 * It provides a helper class, nsIContextMenuInfo, to allow access to
 * background images as well as various utilities.
 *
 * @see nsIContextMenuListener
 * @see nsIContextMenuInfo
 */
@:native("Components.interfaces.nsIContextMenuListener2")
extern class NsIContextMenuListener2 extends NsISupports
{
	/** Flag. No context. */
	static var CONTEXT_NONE : Int; // 0
	/** Flag. Context is a link element. */
	static var CONTEXT_LINK : Int; // 1
	/** Flag. Context is an image element. */
	static var CONTEXT_IMAGE : Int; // 2
	/** Flag. Context is the whole document. */
	static var CONTEXT_DOCUMENT : Int; // 4
	/** Flag. Context is a text area element. */
	static var CONTEXT_TEXT : Int; // 8
	/** Flag. Context is an input element. */
	static var CONTEXT_INPUT : Int; // 16  
	/** Flag. Context is a background image. */
	static var CONTEXT_BACKGROUND_IMAGE : Int; // 32

	/**
	 * Called when the browser receives a context menu event (e.g. user is right-mouse
	 * clicking somewhere on the document). The combination of flags, along with the
	 * attributes of <CODE>aUtils</CODE>, indicate where and what was clicked on.
	 *
	 * The following table describes what context flags and node combinations are
	 * possible.
	 *
	 * aContextFlags                  aUtils.targetNode
	 *
	 * CONTEXT_LINK                   <A>
	 * CONTEXT_IMAGE                  <IMG>
	 * CONTEXT_IMAGE | CONTEXT_LINK   <IMG> with <A> as an ancestor
	 * CONTEXT_INPUT                  <INPUT>
	 * CONTEXT_INPUT | CONTEXT_IMAGE  <INPUT> with type=image
	 * CONTEXT_TEXT                   <TEXTAREA>
	 * CONTEXT_DOCUMENT               <HTML>
	 * CONTEXT_BACKGROUND_IMAGE       <HTML> with background image
	 *
	 * @param aContextFlags           Flags indicating the kind of context.
	 * @param aUtils                  Context information and helper utilities.
	 *
	 * @see nsIContextMenuInfo
	 */
	function onShowContextMenu(aContextFlags:Int, aUtils:NsIContextMenuInfo) : Void;
}

/**
 * nsIContextMenuInfo
 *
 * A helper object for implementors of nsIContextMenuListener2.
 */
@:native("Components.interfaces.nsIContextMenuInfo")
extern class NsIContextMenuInfo extends NsISupports
{
	/**
	 * The DOM context menu event.
	 */
	var mouseEvent : NsIDOMEvent;

	/**
	 * The DOM node most relevant to the context.
	 */
	var targetNode : NsIDOMNode;

	/**
	 * Given the <CODE>CONTEXT_LINK</CODE> flag, <CODE>targetNode</CODE> may not
	 * nescesarily be a link. This returns the anchor from <CODE>targetNode</CODE>
	 * if it has one or that of its nearest ancestor if it does not.
	 */
	var associatedLink : AString;

	/**
	 * Given the <CODE>CONTEXT_IMAGE</CODE> flag, these methods can be
	 * used in order to get the image for viewing, saving, or for the clipboard.
	 *
	 * @return <CODE>NS_OK</CODE> if successful, otherwise <CODE>NS_ERROR_FAILURE</CODE> if no
	 * image was found, or NS_ERROR_NULL_POINTER if an internal error occurs where we think there 
	 * is an image, but for some reason it cannot be returned.
	 */
	var imageContainer : ImgIContainer;
	var imageSrc : NsIURI;

	/**
	 * Given the <CODE>CONTEXT_BACKGROUND_IMAGE</CODE> flag, these methods can be
	 * used in order to get the image for viewing, saving, or for the clipboard.
	 *
	 * @return <CODE>NS_OK</CODE> if successful, otherwise <CODE>NS_ERROR_FAILURE</CODE> if no background
	 * image was found, or NS_ERROR_NULL_POINTER if an internal error occurs where we think there is a 
	 * background image, but for some reason it cannot be returned.
	 */
	var backgroundImageContainer : ImgIContainer;
	var backgroundImageSrc : NsIURI;
}