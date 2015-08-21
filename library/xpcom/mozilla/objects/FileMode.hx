package xpcom.mozilla.objects;

@:enum
abstract FileMode(Int) from Int to Int
{
	/**
	 * Open for reading only.
	 */
	var PR_RDONLY = 0x01;
	
	/**
	 * Open for writing only.
	 */
	var PR_WRONLY = 0x02;
	
	/**
	 * Open for reading and writing.
	 */
	var PR_RDWR = 0x04;
	
	/**
	 * If the file does not exist, the file is created. If the file exists, this flag has no effect.
	 */
	var PR_CREATE_FILE = 0x08;
	
	/**
	 * The file pointer is set to the end of the file prior to each write.
	 */	
	var PR_APPEND = 0x10;
	
	/**
	 * If the file exists, its length is truncated to 0.
	 */
	var PR_TRUNCATE = 0x20;
	
	/**
	 * If set, each write will wait for both the file data and file status to be physically updated.
	 */
	var PR_SYNC = 0x40;
	
	/**
	 * With PR_CREATE_FILE, if the file does not exist, the file is created. If the file already exists, no action and NULL is returned.
	 */
	var PR_EXCL = 0x80;
	
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
	var PR_IRWXG 	= Macro.octal(70);
	/**
	 * read permission, group
	 */
	var PR_IRGRP 	= Macro.octal(40);
	/**
	 * write permission, group
	 */
	var PR_IWGRP 	= Macro.octal(20);
	/**
	 * execute/search permission, group
	 */
	var PR_IXGRP 	= Macro.octal(10);
	/**
	 * read, write, execute/search by others
	 */
	var PR_IRWXO 	= Macro.octal(7);
	/**
	 * read permission, others
	 */
	var PR_IROTH 	= Macro.octal(4);
	/**
	 * write permission, others
	 */
	var PR_IWOTH 	= Macro.octal(2);
	/**
	 * execute/search permission, others
	 */
	var PR_IXOTH 	= Macro.octal(1);
}
