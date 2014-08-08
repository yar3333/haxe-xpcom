package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPrintingPrompt") extern class NsIPrintingPrompt extends NsISupports
{
	function showPageSetup(printSettings:NsIPrintSettings, aObs:NsIObserver) : Void;
	function showPrintDialog(webBrowserPrint:NsIWebBrowserPrint, printSettings:NsIPrintSettings) : Void;
	function showPrinterProperties(printerName:Wstring, printSettings:NsIPrintSettings) : Void;
	function showProgress(webBrowserPrint:NsIWebBrowserPrint, printSettings:NsIPrintSettings, openDialogObserver:NsIObserver, isForPrinting:Bool, webProgressListener:NsIWebProgressListener, printProgressParams:NsIPrintProgressParams, notifyOnOpen:Bool) : Void;
}
