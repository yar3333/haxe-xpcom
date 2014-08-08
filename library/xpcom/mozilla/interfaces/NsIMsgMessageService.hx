package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgMessageService") extern class NsIMsgMessageService extends NsISupports
{
	function CopyMessage(aSrcURI:String, aCopyListener:NsIStreamListener, aMoveMessage:Bool, aUrlListener:NsIUrlListener, aMsgWindow:NsIMsgWindow, aURL:{value:NsIURI}) : Void;
	function CopyMessages(keys:NsMsgKeyArrayPtr, srcFolder:NsIMsgFolder, aCopyListener:NsIStreamListener, aMoveMessage:Bool, aUrlListener:NsIUrlListener, aMsgWindow:NsIMsgWindow, aURL:{value:NsIURI}) : Void;
	function DisplayMessage(aMessageURI:String, aDisplayConsumer:NsISupports, aMsgWindow:NsIMsgWindow, aUrlListener:NsIUrlListener, aCharsetOverride:String, aURL:{value:NsIURI}) : Void;
	function openAttachment(aContentType:String, aFileName:String, aUrl:String, aMessageUri:String, aDisplayConsumer:NsISupports, aMsgWindow:NsIMsgWindow, aUrlListener:NsIUrlListener) : Void;
	function SaveMessageToDisk(aMessageURI:String, aFile:NsIFileSpec, aGenerateDummyEnvelope:Bool, aUrlListener:NsIUrlListener, aURL:{value:NsIURI}, canonicalLineEnding:Bool, aMsgWindow:NsIMsgWindow) : Void;
	function GetUrlForUri(aMessageURI:String, aURL:{value:NsIURI}, aMsgWindow:NsIMsgWindow) : Void;
	function DisplayMessageForPrinting(aMessageURI:String, aDisplayConsumer:NsISupports, aMsgWindow:NsIMsgWindow, aUrlListener:NsIUrlListener, aURL:{value:NsIURI}) : Void;
	function Search(aSearchSession:NsIMsgSearchSession, aMsgWindow:NsIMsgWindow, aMsgFolder:NsIMsgFolder, aSearchUri:String) : Void;
	function streamMessage(aMessageURI:String, aConsumer:NsISupports, aMsgWindow:NsIMsgWindow, aUrlListener:NsIUrlListener, aConvertData:Bool, aAdditionalHeader:String) : NsIURI;
	function streamHeaders(aMessageURI:String, aConsumer:NsIStreamListener, aUrlListener:NsIUrlListener, ?aLocalOnly:Bool) : NsIURI;
	function messageURIToMsgHdr(uri:String) : NsIMsgDBHdr;
}
