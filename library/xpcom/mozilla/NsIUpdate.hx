package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIUpdate") extern class NsIUpdate extends NsISupports
{
	/**
	 * The Application version of this update.
	 */
	var appVersion : AString;
	/**
	 * The URL to a page that is typically localized to display in the update prompt.
	 */
	var billboardURL : AString;
	/**
	 * The build ID of this update. This is used to identify a particular build, down to the hour, minute, and second of its creation. This lets the system differentiate between several nightly builds with the same version, for example.
	 */
	var buildID : AString;
	/**
	 * The channel used to retrieve this update from the update service.
	 */
	var channel : AString;
	/**
	 * The URL to a page which offers details about the content of this update. Ideally, this page is not the release notes but some other page that summarizes the differences between this update and the previous, which also links to the release notes.
	 */
	var detailsURL : AString;
	/**
	 * The string to display in the user interface for the version. If you want a real version number use appVersion.
	 */
	var displayVersion : AString;
	/**
	 * A numeric error code that conveys additional information about the state of a failed update or failed certificate attribute check during an update check. If the update is not in the "failed" state, this value is zero.  OK (0) No error. MEM_ERROR (1) A memory error occurred. USAGE_ERROR (3) A usage error occurred; this needs to be described in more detail. CRC_ERROR (4) A checksum error occurred. PARSE_ERROR (5) An error occurred while parsing the patch. READ_ERROR (6) An error occurred while reading the patch. WRITE_ERROR (7) An error occurred while writing the patched application. UNEXPECTED_ERROR (8) An unanticipate type of error occurred.
	 */
	var errorCode : Long;
	/**
	 * The add-on version of this update. Used by the extension system to track compatibility of installed add-ons with this update. Obsolete since Gecko 2.0
	 */
	var extensionVersion : AString;
	/**
	 * The date and time at which the update was installed.
	 */
	var installDate : LongLong;
	/**
	 * true if the update is a complete replacement of the existing installation; false if the update is a patch representing the difference between the new version and the existing version.
	 */
	var isCompleteUpdate : Bool;
	/**
	 * true if the update is a security update. If the update is a security update, a more seriously-worded user interface message is used to present the update to the user.
	 */
	var isSecurityUpdate : Bool;
	/**
	 * The URL to an HTML fragment that contains a license for the update. If this is specified, the user is shown the license file after they choose to install the update, and they must agree to it before the download begins.
	 */
	var licenseURL : AString;
	/**
	 * The name of the update, in the form "application_name update_version"
	 */
	var name : AString;
	/**
	 * The number of patches supplied by this update. Read only.
	 */
	var patchCount : ULong;
	/**
	 * The toolkit version of this update.
	 */
	var platformVersion : AString;
	/**
	 * The Application version prior to the application being updated.
	 */
	var previousAppVersion : AString;
	/**
	 * The currently selected patch for this update. Read only.
	 */
	var selectedPatch : NsIUpdatePatch;
	/**
	 * The URL to the update service that supplied this update.
	 */
	var serviceURL : AString;
	/**
	 * Whether to show the "No Thanks" button in the update prompt. This allows the user to never receive a notification for that specific update version again.
	 */
	var showNeverForVersion : Bool;
	/**
	 * Whether to show the update prompt which requires user confirmation when an update is found during a background update check. This overrides the default setting to download the update in the background.
	 */
	var showPrompt : Bool;
	/**
	 * Whether to show the survey link in the update prompt. The url must also be present in the app.update.surveyURL preference.
	 */
	var showSurvey : Bool;
	/**
	 * The state of the selected patch:  "downloading" The update is being downloaded. "pending" The update is ready to be applied. "applying" The update is in the process of being applied. "succeeded" The update has been installed successfully. "download-failed" The update failed to be downloaded. "failed" Installing the update failed.  Read only.
	 */
	var state : AString;
	/**
	 * An optional message associated with the update.
	 */
	var statusText : AString;
	/**
	 * The type of patch represented by the object:  "major" A major new version of the application. "minor" A minor update, such as a security update.
	 */
	var type : AString;
	/**
	 * The application version of the update.Obsolete since Gecko 2.0
	 */
	var version : AString;
	
	function getPatchAt(index:ULong) : NsIUpdatePatch;
	function serialize(updates:NsIDOMDocument) : NsIDOMElement;
}
