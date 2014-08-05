package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIXULAppInfo") extern class NsIXULAppInfo extends NsISupports
{
	/**
	 * The application's build ID/date, for example "2004051604". For XULRunner applications, this will be different than the build ID of the platform. Be careful about which one you want. Read only.
	 */
	var appBuildID : ACString;
	/**
	 * The XUL application's UUID. Can be an empty string, if id is not set. Has to be defined for advanced application features such as the extension manager and update service.
	 * This has traditionally been in the form "{AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE}" but for new applications a more readable form is encouraged: "appname@vendor.tld". Only the following characters are allowed: a-z A-Z 0-9 - . @ _ { } * Read only.
	 */
	var ID : ACString;
	/**
	 * The name of the application. This must be ASCII, and is normally mixed-case, for example "Firefox", "Thunderbird" or "SeaMonkey". Must not be null or an empty string. Read only.
	 */
	var name : ACString;
	/**
	 * The build ID/date of Gecko and the XULRunner platform. Read only.
	 */
	var platformBuildID : ACString;
	/**
	 * The version of Gecko or XULRunner platform, for example "1.8.1.19" or "1.9.3pre". In "Firefox 3.7 alpha 1" the application version is "3.7a1pre" while the platform version is "1.9.3pre" Read only.
	 */
	var platformVersion : ACString;
	/**
	 * The name of the application vendor. This must be ASCII, and is normally mixed-case, for example "Mozilla". Can be an empty string if vendor is not set. Read only.
	 */
	var vendor : ACString;
	/**
	 * The XUL application's version, for example "0.8.0+" or "3.7a1pre". It is different than the version of Gecko or the XULRunner platform. Be careful about which one you want! Can be an empty string, but a valid value is required for XUL applications using the extension manager or update service. Read only.
	 */
	var version : ACString;
}
