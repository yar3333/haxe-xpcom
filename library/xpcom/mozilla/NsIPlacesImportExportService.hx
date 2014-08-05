package xpcom.mozilla;

import xpcom.Components;
import xpcom.types.*;

@:native("nsIPlacesImportExportService") extern class NsIPlacesImportExportService extends NsISupports
{
	public static inline function getService() : NsIPlacesImportExportService return Components.classes[cast "@mozilla.org/import-export-service;1"].getService(Components.interfaces.nsIPlacesImportExportService);
}
