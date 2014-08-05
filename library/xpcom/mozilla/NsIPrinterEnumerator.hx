package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIPrinterEnumerator") extern class NsIPrinterEnumerator extends NsISupports
{
	/**
	 * The name of the system default printer. This name should also be present in printerNameList. This is not necessarily gecko's default printer; see nsIPrintSettingsService.defaultPrinterName for that. Read only.
	 */
	var defaultPrinterName : Wstring;
	/**
	 * The list of printer names. Read only.
	 */
	var printerNameList : NsIStringEnumerator;
	
	function displayPropertiesDlg(aPrinter:Wstring, aPrintSettings:NsIPrintSettings) : Void;
	function enumeratePrinters(aCount:PRUint32, aResult:Array<Wstring>) : Void;
	function initPrintSettingsFromPrinter(aPrinterName:Wstring, aPrintSettings:NsIPrintSettings) : Void;
}
