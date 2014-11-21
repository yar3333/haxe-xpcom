class Implements
{
	public static var services =
	[
		"nsIClipboardHelper" => "@mozilla.org/widget/clipboardhelper;1",
		"nsIClipboard" => "@mozilla.org/widget/clipboard;1"
	];
	
	public static var instances =
	[
		"nsIFile" => "@mozilla.org/file/local;1",
		"nsIFileInputStream" => "@mozilla.org/network/file-input-stream;1",
		"nsIFileOutputStream" => "@mozilla.org/network/file-output-stream;1",
		"nsISupportsString" => "@mozilla.org/supports-string;1"
	];
}