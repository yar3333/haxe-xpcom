package xpcom.types;

#if js
typedef ArrayBufferView = js.html.ArrayBufferView;
#else
typedef ArrayBufferView = Dynamic;
#end
