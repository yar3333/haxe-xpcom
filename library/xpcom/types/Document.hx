package xpcom.types;

#if js
typedef Document = js.html.Document;
#else
typedef Document = Dynamic;
#end
