package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIHttpChannelInternal") extern class NsIHttpChannelInternal extends NsISupports
{
	/**
	 * Returns true if and only if the channel has been canceled. Read only.
	 */
	var canceled : Bool;
	/**
	 * External handlers may set this to true to notify the channel that it is open on behalf of a download.
	 */
	var channelIsForDownload : Bool;
	/**
	 * An HTTP channel can own a reference to the document URI.
	 */
	var documentURI : NsIURI;
	/**
	 * Force relevant cookies to be sent with this load even if normally they would not be.
	 */
	var forceAllowThirdPartyCookie : Bool;
	/**
	 * The local IP address to which the channel is bound, in the same format produced by PR_NetAddrToString(). This may be either an IPv4 or IPv6 address. Note: If Network Address Translation (NAT) is in effect, this may not be the same address the remote host thinks it is talking to. This may throw an NS_ERROR_NOT_AVAILABLE exception if accessed when the channel's endpoints haven't been determined yet, or any time the nsIHttpActivityObserver.isActive attribute is false. See bug 534698 and bug 526207. Read only.
	 */
	var localAddress : AUTF8String;
	/**
	 * The local port number to which the channel is bound. This may throw an NS_ERROR_NOT_AVAILABLE exception if accessed when the channel's endpoints haven't been determined yet, or any time the nsIHttpActivityObserver.isActive attribute is false. See bug 534698 and bug 526207. Read only.
	 */
	var localPort : PRInt32;
	/**
	 * Get the proxy info in use by the channel. Read only.  Obsolete since Gecko 1.9
	 */
	var proxyInfo : NsIProxyInfo;
	/**
	 * The IP address of the remote host to which this channel is bound, in the same format produced by PR_NetAddrToString(). This may throw an NS_ERROR_NOT_AVAILABLE exception if accessed when the channel's endpoints haven't been determined yet, or any time the nsIHttpActivityObserver.isActive attribute is false. See bug 534698 and bug 526207. Read only.
	 */
	var remoteAddress : AUTF8String;
	/**
	 * The remote port number to which the channel is bound. This may throw an NS_ERROR_NOT_AVAILABLE exception if accessed when the channel's endpoints haven't been determined yet, or any time the nsIHttpActivityObserver.isActive attribute is false. See bug 534698 and bug 526207. Read only.
	 */
	var remotePort : PRInt32;
}
