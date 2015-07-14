package xpcom;

import haxe.macro.Context;
import haxe.macro.Type;
import haxe.macro.Expr;
using haxe.macro.ExprTools;

class Macro
{
	public static macro function octal(x:ExprOf<Int>) : Expr
	{
		switch (x.expr)
		{
			case EConst(c):
				switch (c)
				{
					case CInt(s):
						var r = 0;
						var m = 1;
						var i = s.length - 1; while (i >= 0)
						{
							r += (s.charCodeAt(i) - "0".code) * m;
							m <<= 3;
							i--;
						}
						return macro $v{r};
						
					case _:
				}
				
			case _:
		}
		
		Context.error("Octal value must be a integer literal.", Context.currentPos());
		return macro 0;
	}
}