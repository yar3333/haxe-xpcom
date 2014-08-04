package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsILoadGroup") extern class NsILoadGroup extends NsIRequest
{
	/**
	 * Returns the count of "active" requests (that is requests without the LOAD_BACKGROUND bit set). Read only.
	 */
	var activeCount : ULong;
	/**
	 * Accesses the default load request for the group. Each time a number of requests are added to a group, the defaultLoadRequest may be set to indicate that all of the requests are related to a base request.
	 * The load group inherits its load flags from the default load request. If the default load request is null, then the group's load flags are not changed.
	 */
	var defaultLoadRequest : NsIRequest;
	/**
	 * The group observer is notified when requests are added to and removed from this load group. The groupObserver is weak referenced.
	 */
	var groupObserver : NsIRequestObserver;
	/**
	 * Notification callbacks for the load group.
	 */
	var notificationCallbacks : NsIInterfaceRequestor;
	/**
	 * Returns the requests contained directly in this group. Enumerator element type: nsIRequest. Read only.
	 */
	var requests : NsISimpleEnumerator;
}
