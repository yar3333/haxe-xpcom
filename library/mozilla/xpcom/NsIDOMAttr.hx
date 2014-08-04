package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIDOMAttr") extern class NsIDOMAttr extends NsIDOMNode
{
	var name : DOMString;
	var specified : Bool;
	var value : DOMString;
	var ownerElement : NsIDOMElement;
	var isId : Bool;
}