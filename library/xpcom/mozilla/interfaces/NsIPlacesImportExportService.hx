package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIPlacesImportExportService") extern class NsIPlacesImportExportService extends NsISupports
{
	public static inline function getService() : NsIPlacesImportExportService return Components.classes[cast "@mozilla.org/import-export-service;1"].getService(Components.interfaces.nsIPlacesImportExportService);
	
	function backupBookmarksFile() : Void;
	function exportHTMLToFile(aFile:NsILocalFile) : Void;
	function importHTMLFromFile(aFile:NsILocalFile, aIsInitialImport:Bool) : Void;
	function importHTMLFromFileToFolder(aFile:NsILocalFile, aFolder:PRInt64, aIsInitialImport:Bool) : Void;
	function importHTMLFromURI(aURI:NsIURI, aIsInitialImport:Bool) : Void;
}
