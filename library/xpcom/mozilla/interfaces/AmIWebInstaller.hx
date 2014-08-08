package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.amIWebInstaller") extern class AmIWebInstaller extends NsISupports
{
	function installAddonsFromWebpage(aMimetype:AString, aWindow:NsIDOMWindow, aReferer:NsIURI, aUris:Array<Wstring>, aHashes:Array<Wstring>, aNames:Array<Wstring>, aIcons:Array<Wstring>, ?aCallback:AmIInstallCallback, ?aInstallCount:PRUint32) : Bool;
	function isInstallEnabled(aMimetype:AString, aReferer:NsIURI) : Bool;
}
