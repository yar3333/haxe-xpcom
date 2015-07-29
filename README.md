# xpcom #

Haxe wrapper for Mozilla XPCOM classes and interfaces (for use in XUL applications).

### Quick start ###

Just compile your haxe code to javascript with haxe and link result file to your *.xul or *.html.
There are two methods to use XPCOM interfaces: create instance or get service.
In the first case use static createInstance() interface's method. In the second case - getService() static method.

### Examples ###

Show a system FilePicker dialog:
```haxe

import xpcom.mozilla.interfaces.NsIFilePicker;
...
var fp = NsIFilePicker.createInstance(cast js.Browser.window.parent.window, "Select a file to open", NsIFilePicker.modeOpen);
fp.appendFilter("Text files", "*.txt");
if (fp.show() == NsIFilePicker.returnOK)
{
    trace(fp.file.path);
}
```

Read file content:
```haxe

import xpcom.mozilla.interfaces.NsIConverterInputStream;
import xpcom.mozilla.interfaces.NsIFileInputStream;
import xpcom.mozilla.modules.FileUtils.File;
...
function getContent(filePath:String) : String 
{
	var r = "";
	
	var fstream = NsIFileInputStream.createInstance(new File(filePath), -1, 0, 0);
	var cstream = NsIConverterInputStream.createInstance(fstream, "UTF-8", 0, 0);
	
	var str = { value:"" };
	var read = 0;
	do { 
		read = cstream.readString(0xffffffff, str); // read as much as we can and put it in str.value
		r += str.value;
	} while (read != 0);
	
	cstream.close();
	
	return r;
}
```

Working with a system clipboard:
```haxe

import xpcom.mozilla.interfaces.NsIClipboard;
import xpcom.mozilla.interfaces.NsIClipboardHelper;
import xpcom.mozilla.interfaces.NsITransferable;
import xpcom.mozilla.interfaces.NsISupports;
import xpcom.mozilla.interfaces.NsISupportsString;
...
// put string to clipboard
NsIClipboardHelper.getService().copyString("I want to put this string to the system clipboard.");

// get string from clipboard
var trans = NsITransferable.createInstance();
trans.addDataFlavor("text/unicode");
NsIClipboard.getService().getData(trans, NsIClipboard.kGlobalClipboard);
var dataStr : { value:NsISupports } = { value:null };
var dataStrLen = { value:0 };
trans.getTransferData("text/unicode", dataStr, dataStrLen);
var data = dataStr.value.QueryInterface(NsISupportsString).data;
trace("String from clipboard: " + data);
```