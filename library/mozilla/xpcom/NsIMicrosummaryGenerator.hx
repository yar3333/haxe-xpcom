package mozilla.xpcom;

import mozilla.xpcom.types.*;

@:native("nsIMicrosummaryGenerator") extern class NsIMicrosummaryGenerator extends NsISupports
{
	/**
	 * Has the generator itself (which may be a remote resource) been loaded. Read only.
	 */
	var loaded : Bool;
	/**
	 * For generators installed by the user or bundled with the browser, the local URI points to the location of the local file containing the generator's XML. Read only.
	 */
	var localURI : NsIURI;
	/**
	 * An arbitrary descriptive name for this microsummary generator. Read only.
	 */
	var name : AUTF8String;
	/**
	 * Whether or not this generator needs page content to generate a microsummary. Microsummaries generated by XSLT templates need page content, while those which represent the actual microsummary do not. Read only.
	 */
	var needsPageContent : Bool;
	/**
	 * The canonical location and unique identifier of the generator. It tells us where the generator comes from and where to go for updates. Read only. For generators referenced by web pages via  tags, this URI is the URL specified by the tag. For generators installed via nsISidebar.addMicrosummaryGenerator(), this URI is a URN of the form urn:source:, where  is the remote location from which we installed the generator. For generators installed via some other mechanism (for example an extension that dynamically creates generators), this URI is a URN in a form of the extension's own choosing, with the only restriction being that the URI be globally unique. To ensure this, we recommend that such extensions incorporate UUIDs created by nsIUUIDGenerator into the URNs of the generators they create.
	 */
	var uri : NsIURI;
}
