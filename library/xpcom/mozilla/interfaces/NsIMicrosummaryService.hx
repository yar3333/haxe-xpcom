package xpcom.mozilla.interfaces;

import xpcom.Components;
import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIMicrosummaryService") extern class NsIMicrosummaryService extends NsISupports
{
	public static inline function getService() : NsIMicrosummaryService return Components.classes[cast "@mozilla.org/microsummary/service;1"].getService(Components.interfaces.nsIMicrosummaryService);
	
	function addGenerator(generatorURI:NsIURI) : Void;
	function createMicrosummary(pageURI:NsIURI, generatorURI:NsIURI) : NsIMicrosummary;
	function getBookmarks() : NsISimpleEnumerator;
	function getGenerator(generatorURI:NsIURI) : NsIMicrosummaryGenerator;
	function getMicrosummaries(pageURI:NsIURI, bookmarkID:LongLong) : NsIMicrosummarySet;
	function getMicrosummary(bookmarkID:LongLong) : NsIMicrosummary;
	function hasMicrosummary(bookmarkID:LongLong) : Bool;
	function installGenerator(xmlDefinition:NsIDOMDocument) : NsIMicrosummaryGenerator;
	function isMicrosummary(bookmarkID:LongLong, microsummary:NsIMicrosummary) : Bool;
	function refreshMicrosummary(bookmarkID:LongLong) : NsIMicrosummary;
	function removeMicrosummary(bookmarkID:LongLong) : Void;
	function setMicrosummary(bookmarkID:LongLong, microsummary:NsIMicrosummary) : Void;
}
