package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgHeaderParser") extern class NsIMsgHeaderParser extends NsISupports
{
	function extractHeaderAddressMailboxes(line:String) : String;
	function extractHeaderAddressName(line:String, name:{value:String}) : Void;
	function extractHeaderAddressNames(line:String, userNames:{value:String}) : Void;
	function makeFullAddress(aName:AString, aAddress:AString) : AString;
	function makeFullAddressString(aName:String, aAddress:String) : String;
	function makeFullAddressWString(name:Wstring, addr:Wstring) : Wstring;
	function parseHeaderAddresses(line:String, names:{value:String}, addresses:{value:String}, numAddresses:{value:PRUint32}) : Void;
	function parseHeadersWithArray(aLine:Wstring, aEmailAddresses:Array<Wstring>, aNames:Array<Wstring>, aFullNames:Array<Wstring>, count:{value:ULong}) : Void;
	function reformatHeaderAddresses(line:String, reformattedAddress:{value:String}) : Void;
	function reformatUnquotedAddresses(line:Wstring) : Wstring;
	function removeDuplicateAddresses(addrs:String, other_addrs:String, removeAliasesToMe:PRBool, newAddress:{value:String}) : Void;
	function unquotePhraseOrAddr(line:String, preserveIntegrity:Bool) : String;
	function unquotePhraseOrAddrWString(line:Wstring, preserveIntegrity:Bool) : Wstring;
}
