package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXULTemplateQueryProcessor") extern class NsIXULTemplateQueryProcessor extends NsISupports
{
	function addBinding(aRuleNode:NsIDOMNode, aVar:NsIAtom, aRef:NsIAtom, aExpr:AString) : Void;
	function compareResults(aLeft:NsIXULTemplateResult, aRight:NsIXULTemplateResult, aVar:NsIAtom, aSortHints:ULong) : PRInt32;
	function compileQuery(aBuilder:NsIXULTemplateBuilder, aQuery:NsIDOMNode, aRefVariable:NsIAtom, aMemberVariable:NsIAtom) : NsISupports;
	function done() : Void;
	function generateResults(aDatasource:NsISupports, aRef:NsIXULTemplateResult, aQuery:NsISupports) : NsISimpleEnumerator;
	function getDatasource(aDataSources:NsIArray, aRootNode:NsIDOMNode, aIsTrusted:Bool, aBuilder:NsIXULTemplateBuilder, aShouldDelayBuilding:Bool) : NsISupports;
	function initializeForBuilding(aDatasource:NsISupports, aBuilder:NsIXULTemplateBuilder, aRootNode:NsIDOMNode) : Void;
	function translateRef(aDatasource:NsISupports, aRefString:AString) : NsIXULTemplateResult;
}
