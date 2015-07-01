convert-idl-to-haxe:
	haxelib run refactor convert -ec ../../native-idl *.idl native-idl-temp '!(.)(.*).idl$$!$$^^1$$2.hx!' src/idl_to_haxe.rules
	haxelib run refactor reindent native-idl-temp *.hx 8 2 4 4
	haxelib run refactor convert native-idl-temp *.hx ../../library/xpcom/mozilla/interfaces !!! src/idl_to_haxe-post.rules
	rm -rf native-idl-temp
