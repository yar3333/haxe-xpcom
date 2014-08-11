package xpcom.types;

#if js
typedef Node = js.html.Node;
#else
typedef Node = Dynamic;
#end
