package xpcom.mozilla;

import xpcom.types.*;

@:native("nsISupportsArray") extern class NsISupportsArray extends NsICollection
{
	function AppendElements(aElements:NsISupportsArray) : Bool;
	function clone() : NsISupportsArray;
	function Compact() : Void;
	function DeleteElementAt(aIndex:ULong) : Void;
	function DeleteLastElement(aElement:NsISupports) : Void;
	function ElementAt(aIndex:ULong) : NsISupports;
	function EnumerateBackwards(aFunc:NsISupportsArrayEnumFunc, aData:VoidPtr) : Bool;
	function EnumerateForwards(aFunc:NsISupportsArrayEnumFunc, aData:VoidPtr) : Bool;
	function Equals(other:NsISupportsArray) : Bool;
	function GetIndexOf(aPossibleElement:NsISupports) : Long;
	function GetIndexOfStartingAt(aPossibleElement:NsISupports, aStartIndex:ULong) : Long;
	function GetLastIndexOf(aPossibleElement:NsISupports) : Long;
	function IndexOf(aPossibleElement:NsISupports) : Long;
	function IndexOfStartingAt(aPossibleElement:NsISupports, aStartIndex:ULong) : Long;
	function InsertElementAt(aElement:NsISupports, aIndex:ULong) : Bool;
	function InsertElementsAt(aOther:NsISupportsArray, aIndex:ULong) : Bool;
	function LastIndexOf(aPossibleElement:NsISupports) : Long;
	function MoveElement(aFrom:Long, aTo:Long) : Bool;
	function RemoveElementAt(aIndex:ULong) : Bool;
	function RemoveElementsAt(aIndex:ULong, aCount:ULong) : Bool;
	function RemoveLastElement(aElement:NsISupports) : Bool;
	function ReplaceElementAt(aElement:NsISupports, aIndex:ULong) : Bool;
	function SizeTo(aSize:Long) : Bool;
}
