package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIXULTemplateBuilder") extern class NsIXULTemplateBuilder extends NsISupports
{
	/**
	 * Readonly: The root node in the DOM to which this builder is attached.
	 */
	var root : NsIDOMElement;
	/**
	 * The opaque datasource object that is used for the template. This object is created by the getDataSource method of the query processor. May be null if the datasource has not been loaded yet. Set this attribute to use a different datasource and rebuild the template. For an RDF datasource, this will be the same as the database. For XML this will be the nsIDOMNode for the datasource document or node for an inline reference (such as #name). Other query processors may use other types for the datasource.
	 */
	var datasource : NsISupports;
	/**
	 * Readonly: The composite datasource that the template builder observes and uses to create content. This is used only for RDF queries and is maintained for backwards compatibility. It will be the same object as the datasource property. For non-RDF queries, it will always be null.
	 */
	var database : NsIRDFCompositeDataSource;
	/**
	 * Readonly: The virtual result representing the starting reference point, determined by calling the query processor's translateRef method with the root node's ref attribute as an argument.
	 */
	var rootResult : NsIXULTemplateResult;
	/**
	 * [noscript] Readonly: The query processor used to generate results.
	 */
	var queryProcessor : NsIXULTemplateQueryProcessor;
	
	function rebuild() : Void;
	function refresh() : Void;
	function addResult(aResult:NsIXULTemplateResult, aQueryNode:NsIDOMNode) : Void;
	function removeResult(aResult:NsIXULTemplateResult) : Void;
	function replaceResult(aOldResult:NsIXULTemplateResult, aNewResult:NsIXULTemplateResult, aQueryNode:NsIDOMNode) : Void;
	function resultBindingChanged(aResult:NsIXULTemplateResult) : Void;
	function getResultForId(aId:AString) : NsIXULTemplateResult;
	function getResultForContent(aElement:NsIDOMElement) : NsIXULTemplateResult;
	function hasGeneratedContent(aNode:NsIRDFResource, aTag:NsIAtom) : Bool;
	function addRuleFilter(aRule:NsIDOMNode, aFilter:NsIXULTemplateRuleFilter) : Void;
	function init(aElement:NsIContent) : Void;
	function createContents(aElement:NsIContent, aForceCreation:Bool) : Void;
	function addListener(aListener:NsIXULBuilderListener) : Void;
	function removeListener(aListener:NsIXULBuilderListener) : Void;
}
