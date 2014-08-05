package xpcom.mozilla;

import xpcom.types.*;

@:native("nsIPrintingPrompt") extern class NsIPrintingPrompt extends NsISupports
{
	function showPageSetup(printSettings:NsIPrintSettings, aObs:NsIObserver) : Void;
	function showPrintDialog(webBrowserPrint:NsIWebBrowserPrint, printSettings:NsIPrintSettings) : Void;
	function showPrinterProperties(printerName:Wstring, printSettings:NsIPrintSettings) : Void;
	function showProgress(webBrowserPrint:NsIWebBrowserPrint, printSettings:NsIPrintSettings, openDialogObserver:NsIObserver, isForPrinting:Bool, webProgressListener:NsIWebProgressListener, printProgressParams:NsIPrintProgressParams, notifyOnOpen:Bool) : Void;
}
