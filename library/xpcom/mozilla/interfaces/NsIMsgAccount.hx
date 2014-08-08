package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMsgAccount") extern class NsIMsgAccount extends NsISupports
{
	var defaultIdentity : NsIMsgIdentity;
	/**
	 * Read only. Outgoing identity list (array of nsIMsgIdentity's)
	 */
	var identities : NsISupportsArray;
	/**
	 * Incoming server stuff
	 */
	var incomingServer : NsIMsgIncomingServer;
	/**
	 * Internal key identifying itself
	 */
	var key : ACString;
	
	function addIdentity(identity:NsIMsgIdentity) : Void;
	function clearAllValues() : Void;
	function init() : Void;
	function removeIdentity(identity:NsIMsgIdentity) : Void;
	function toString() : AString;
}
