package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIRadioInterfaceLayer") extern class NsIRadioInterfaceLayer extends NsISupports
{
	public static inline function createInstance() : NsIRadioInterfaceLayer return Components.Constructor("@mozilla.org/telephony/system-worker-manager;1", Components.interfaces.nsIRadioInterfaceLayer);
	
	/**
	 * Read only. Obsolete since Gecko 13.0
	 */
	var currentState : JSVal;
	var microphoneMuted : Bool;
	/**
	 * Read only.
	 */
	var radioState : JSVal;
	var speakerEnabled : Bool;
	
	function answerCall(callIndex:ULong) : Void;
	function deactivateDataCall(cid:DOMString, reason:DOMString) : Void;
	function dial(number:DOMString) : Void;
	function enumerateCalls(callback:NsIRILTelephonyCallback) : Void;
	function getDataCallList() : Void;
	function getNumberOfMessagesForText(text:DOMString) : UShort;
	function hangUp(callIndex:ULong) : Void;
	function registerCallback(callback:NsIRILTelephonyCallback) : Void;
	function registerDataCallCallback(callback:NsIRILDataCallback) : Void;
	function rejectCall(callIndex:ULong) : Void;
	function sendSMS(number:DOMString, message:DOMString, requestId:Long, processId:ULongLong) : Void;
	function setupDataCall(radioTech:Long, apn:DOMString, user:DOMString, passwd:DOMString, chappap:Long, pdptype:DOMString) : Void;
	function startTone(dtmfChar:DOMString) : Void;
	function stopTone() : Void;
	function unregisterCallback(callback:NsIRILTelephonyCallback) : Void;
	function unregisterDataCallCallback(callback:NsIRILDataCallback) : Void;
}
