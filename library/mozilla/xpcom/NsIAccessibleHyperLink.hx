package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIAccessibleHyperLink") extern class NsIAccessibleHyperLink extends NsISupports
{
	/**
	 * The number of anchors within this Hyperlink. Is normally 1 for anchors. This anchor is, for example, the visible output of the html:a tag. With an Image Map, reflects the actual areas within the map. Read only. Renamed from anchors in Gecko 1.9 Exceptions thrown  NS_ERROR_FAILURE Indicates that the accessible is unattached from the accessible tree.
	 */
	var anchorCount : Long;
	/**
	 * The end offset of the hyperlink accessible within the parent accessible. The returned value is related to the nsIAccessibleHyperLink interface of the object that owns this hyperlink. Read only. Note: The link itself is represented by one embedded character within the parent text, so the endIndex should be startIndex + 1. Exceptions thrown  NS_ERROR_FAILURE Indicates that the accessible is unattached from the accessible tree.
	 */
	var endIndex : Long;
	/**
	 * Determines whether the element currently has the focus, for example after returning from the destination page. Read only.  Note: ARIA links can only be focused if they have the tabindex attribute set. Also, state_focused should then be set on the accessible for this link. Exceptions thrown  NS_ERROR_FAILURE Indicates that the accessible is unattached from the accessible tree.
	 */
	var selected : Bool;
	/**
	 * The offset of the hyperlink accessible within the parent accessible. The returned value is related to the nsIAccessibleHyperLink interface of the object that owns this hyperlink. Read only. Exceptions thrown  NS_ERROR_FAILURE Indicates that the accessible is unattached from the accessible tree.
	 */
	var startIndex : Long;
	/**
	 * Determines whether the hyperlink is valid, for example points to a valid URL. Read only.  Note: Currently only used with ARIA links, and the author has to specify that the link is invalid via the aria-invalid='true' attribute. In all other cases, true is returned. Exceptions thrown  NS_ERROR_FAILURE Indicates that the accessible is unattached from the accessible tree.
	 */
	var valid : Bool;
}
