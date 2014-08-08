package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIAccessibleHyperText") extern class NsIAccessibleHyperText extends NsISupports
{
	/**
	 * The number of links contained within this hypertext object. Read only. Renamed from links in Gecko 1.9
	 */
	var linkCount : Long;
	
	function getLink(linkIndex:Long) : NsIAccessibleHyperLink;
	function getLinkIndex(charIndex:Long) : Long;
	function getSelectedLinkIndex() : Long;
}
