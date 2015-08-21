package xpcom.mozilla.objects;

@:enum
abstract FilePerm(Int) from Int to Int
{
	/**
	 * read, write, execute/search by owner.
	 */
	var PR_IRWXU 	= Macro.octal(700);
	/**
	 * read permission, owner.
	 */
	var PR_IRUSR 	= Macro.octal(400);
	/**
	 * write permission, owner.
	 */
	var PR_IWUSR 	= Macro.octal(200);
	/**
	 * execute/search permission, owner.
	 */
	var PR_IXUSR 	= Macro.octal(100);
	/**
	 * read, write, execute/search by group
	 */
	var PR_IRWXG 	= Macro.octal( 70);
	/**
	 * read permission, group
	 */
	var PR_IRGRP 	= Macro.octal( 40);
	/**
	 * write permission, group
	 */
	var PR_IWGRP 	= Macro.octal( 20);
	/**
	 * execute/search permission, group
	 */
	var PR_IXGRP 	= Macro.octal( 10);
	/**
	 * read, write, execute/search by others
	 */
	var PR_IRWXO 	= Macro.octal(  7);
	/**
	 * read permission, others
	 */
	var PR_IROTH 	= Macro.octal(  4);
	/**
	 * write permission, others
	 */
	var PR_IWOTH 	= Macro.octal(  2);
	/**
	 * execute/search permission, others
	 */
	var PR_IXOTH 	= Macro.octal(  1);
}