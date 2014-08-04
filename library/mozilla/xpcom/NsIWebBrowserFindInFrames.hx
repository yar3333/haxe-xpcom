package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIWebBrowserFindInFrames") extern class NsIWebBrowserFindInFrames extends NsISupports
{
	/**
	 * Frame at which to start the search. Once the search is done, this will be set to be the last frame searched, whether or not a result was found. Has to be equal to or contained within the rootSearchFrame.
	 */
	var currentSearchFrame : NsIDOMWindow;
	/**
	 * Frame within which to confine the search (normally the content area frame). Set this to only search a subtree of the frame hierarchy.
	 */
	var rootSearchFrame : NsIDOMWindow;
	/**
	 * Whether to allow the search to propagate out of the currentSearchFrame into its parent frame(s). Search is always confined within the rootSearchFrame. Default is true. Setting nsIWebBrowserfind.searchFrames to true sets this to true.
	 */
	var searchParentFrames : Bool;
	/**
	 * Whether to recurse down into subframes while searching. Default is true. Setting nsIWebBrowserfind.searchFrames to true sets this to true.
	 */
	var searchSubframes : Bool;
}
