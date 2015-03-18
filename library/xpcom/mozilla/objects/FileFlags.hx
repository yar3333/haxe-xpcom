package xpcom.mozilla.objects;

extern class FileFlags
{
	/**
	 * Open for reading only.
	 */
	public static inline var PR_RDONLY = 0x01;
	
	/**
	 * Open for writing only.
	 */
	public static inline var PR_WRONLY = 0x02;
	
	/**
	 * Open for reading and writing.
	 */
	public static inline var PR_RDWR = 0x04;
	
	/**
	 * If the file does not exist, the file is created. If the file exists, this flag has no effect.
	 */
	public static inline var PR_CREATE_FILE = 0x08;
	
	/**
	 * The file pointer is set to the end of the file prior to each write.
	 */	
	public static inline var PR_APPEND = 0x10;
	
	/**
	 * If the file exists, its length is truncated to 0.
	 */
	public static inline var PR_TRUNCATE = 0x20;
	
	/**
	 * If set, each write will wait for both the file data and file status to be physically updated.
	 */
	public static inline var PR_SYNC = 0x40;
	
	/**
	 * With PR_CREATE_FILE, if the file does not exist, the file is created. If the file already exists, no action and NULL is returned.
	 */
	public static inline var PR_EXCL = 0x80;
	
	/**
	 * read, write, execute/search by owner.
	 */
	public static inline var PR_IRWXU 	= 0700; 	
	/**
	 * read permission, owner.
	 */
	public static inline var PR_IRUSR 	= 0400; 	
	/**
	 * write permission, owner.
	 */
	public static inline var PR_IWUSR 	= 0200; 	
	/**
	 * execute/search permission, owner.
	 */
	public static inline var PR_IXUSR 	= 0100; 	
	/**
	 * read, write, execute/search by group
	 */
	public static inline var PR_IRWXG 	= 0070; 	
	/**
	 * read permission, group
	 */
	public static inline var PR_IRGRP 	= 0040; 	
	/**
	 * write permission, group
	 */
	public static inline var PR_IWGRP 	= 0020; 	
	/**
	 * execute/search permission, group
	 */
	public static inline var PR_IXGRP 	= 0010; 	
	/**
	 * read, write, execute/search by others
	 */
	public static inline var PR_IRWXO 	= 0007; 	
	/**
	 * read permission, others
	 */
	public static inline var PR_IROTH 	= 0004; 	
	/**
	 * write permission, others
	 */
	public static inline var PR_IWOTH 	= 0002; 	
	/**
	 * execute/search permission, others
	 */
	public static inline var PR_IXOTH 	= 0001; 	
}