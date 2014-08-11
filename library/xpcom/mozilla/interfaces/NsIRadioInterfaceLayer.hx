package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIRadioInterfaceLayer") extern class NsIRadioInterfaceLayer extends NsISupports
{
	public static inline function createInstance() : NsIRadioInterfaceLayer
	{
		return xpcom.Components.classes[cast "@mozilla.org/telephony/system-worker-manager;1"].createInstance(NsIRadioInterfaceLayer);
	}
	
	static inline var CALL_STATE_UNKNOWN = 0;
	static inline var CALL_STATE_DIALING = 1;
	static inline var CALL_STATE_ALERTING = 2;
	static inline var CALL_STATE_BUSY = 3;
	static inline var CALL_STATE_CONNECTING = 4;
	static inline var CALL_STATE_CONNECTED = 5;
	static inline var CALL_STATE_HOLDING = 6;
	static inline var CALL_STATE_HELD = 7;
	static inline var CALL_STATE_RESUMING = 8;
	static inline var CALL_STATE_DISCONNECTING = 9;
	static inline var CALL_STATE_DISCONNECTED = 10;
	static inline var CALL_STATE_INCOMING = 11;
	static inline var DATACALL_STATE_UNKNOWN = 0;
	static inline var DATACALL_STATE_CONNECTING = 1;
	static inline var DATACALL_STATE_CONNECTED = 2;
	static inline var DATACALL_STATE_DISCONNECTING = 3;
	static inline var DATACALL_STATE_DISCONNECTED = 4;
	/**
	 * <span class="inlineIndicator obsolete obsoleteInline" title="(Firefox 14.0 / Thunderbird 14.0 / SeaMonkey 2.11)">Obsolete since Gecko 14.0</span>
	 */
	static inline var CALL_STATE_RINGING = 2;
	
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
