package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIXULTemplateResult") extern class NsIXULTemplateResult extends NsISupports
{
	/**
	 * ID of the result. The DOM element created for this result, if any, will have its id attribute set to this value. The id must be unique for a query.
	 */
	var id : AString;
	/**
	 * true if the result represents a container. Read only.
	 */
	var isContainer : Bool;
	/**
	 * true if the result represents an empty container. Read only.
	 */
	var isEmpty : Bool;
	/**
	 * true if the template builder may use this result as the reference point for additional recursive processing of the template. The template builder will reprocess the template using this result as the reference point and generate output content that is expected to be inserted as children of the output generated for this result. If false, child content is not processed. This property identifies only the default handling and may be overridden by syntax used in the template. Read only.
	 */
	var mayProcessChildren : Bool;
	/**
	 * Resource for the result, which may be null. If set, the resource uri must be the same as the ID property. Read only.
	 */
	var resource : NsIRDFResource;
	/**
	 * The type of the object. The predefined value 'separator' may be used for separators. Other values may be used for application specific purposes. Read only.
	 */
	var type : AString;
	
	function getBindingFor(aVar:NsIAtom) : AString;
	function getBindingObjectFor(aVar:NsIAtom) : NsISupports;
	function hasBeenRemoved() : Void;
	function ruleMatched(aQuery:NsISupports, aRuleNode:NsIDOMNode) : Void;
}
