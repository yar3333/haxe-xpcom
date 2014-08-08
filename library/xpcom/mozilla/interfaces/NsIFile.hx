package xpcom.mozilla.interfaces;

import xpcom.types.*;
import xpcom.mozilla.objects.*;

@:native("Components.interfaces.nsIFile") extern class NsIFile extends NsISupports
{
	/**
	 * A normal file.
	 */
	static inline var NORMAL_FILE_TYPE = 0;
	/**
	 * A directory/folder.
	 */
	static inline var DIRECTORY_TYPE = 1;
	/**
	 * Optional parameter used by <a href="https://developer.mozilla.org/en/XPCOM_Interface_Reference/nsILocalFile#openNSPRFileDesc()" title="/en/XPCOM_Interface_Reference/nsILocalFile#openNSPRFileDesc()">openNSPRFileDesc</a>
	 */
	static inline var DELETE_ON_CLOSE  = 0x80000000;
	
	/**
	 * Returns an enumeration of the elements in a directory. Each element in the enumeration is an nsIFile. Read only.
	 * Exceptions thrown
	 * 
	 * NS_ERROR_FILE_NOT_DIRECTORY
	 * Indicates that this nsIFile does not reference a directory.
	 */
	var directoryEntries : NsISimpleEnumerator;
	/**
	 * The number of bytes available to non-superuser on the disk volume containing the nsIFile. Read only.
	 */
	var diskSpaceAvailable : PRInt64;
	/**
	 * The value of this attribute is the number of bytes corresponding to the data represented by the file.
	 * On the Mac, getting/setting the file size with nsIFile only deals with the size of the data fork. If you need to know the size of the combined data and resource forks use nsILocalFileMac.GetFileSizeWithResFork().
	 * Changing the size of a nsIFile operates on the underlying filesystem, possibly truncating the existing file to specified size.
	 */
	var fileSize : PRInt64;
	/**
	 * This attribute exposes the size of the symbolic link referenced by this nsIFile.
	 * Unlike fileSize, this attribute corresponds to the size of the symbolic link referenced by this nsIFile. If this nsIFile does not reference a symbolic link, then the value of this attribute is undefined.
	 * The value of this attribute is the number of bytes corresponding to the data represented by the symbolic link. Any meta data, such as a resource fork on the Mac, is not included in the measurement of the file size. Read only.
	 */
	var fileSizeOfLink : PRInt64;
	/**
	 * Determines whether or not the nsIFile will automatically resolve symbolic links.
	 * By default, this value is false on all non-UNIX systems. As of Mozilla 1.7, this attribute is ignored on UNIX systems.
	 */
	var followLinks : PRBool;
	/**
	 * This attribute exposes the time when the file referenced by this nsIFile was last modified.
	 * The value of this attribute is milliseconds since midnight (00:00:00), January 1, 1970 Greenwich Mean Time (GMT).
	 * Changing the last modified time of a nsIFile operates on the underlying filesystem. As of Gecko 1.7, changing the last modified time of a non-existent file has undefined behavior.
	 */
	var lastModifiedTime : PRInt64;
	/**
	 * This attribute exposes the time when the symbolic link referenced by this nsIFile was last modified.
	 * Unlike lastModifiedTime, this attribute corresponds to the last modified time of the symbolic link referenced by this nsIFile. If this nsIFile does not reference a symbolic link, then the value of this attribute is undefined.
	 * The value of this attribute is milliseconds since midnight (00:00:00), January 1, 1970 Greenwich Mean Time (GMT).
	 * Changing the last modified time of a nsIFile operates on the underlying filesystem. As of Gecko 1.7, changing the last modified time of a non-existent file has undefined behavior.
	 */
	var lastModifiedTimeOfLink : PRInt64;
	/**
	 * This attribute exposes the name of the nsIFile without any directory components.
	 * Changing the leaf name of a nsIFile does not affect the underlying filesystem. It only changes what this nsIFile references.
	 */
	var leafName : AString;
	/**
	 * This attribute exposes the name of the nsIFile without any directory components. [native character encoding variant]
	 * Changing the leaf name of a nsIFile does not affect the underlying filesystem. It only changes what this nsIFile references. Native code only!
	 */
	var nativeLeafName : ACString;
	/**
	 * This attribute exposes the full path of the nsIFile. [native character encoding variant]
	 * The value of this attribute is a platform-specific file path. Read only. Native code only!
	 */
	var nativePath : ACString;
	/**
	 * This attribute exposes the full target of the nsIFile - the full path with any symbolic links dereferenced. [native character encoding variant]
	 * The value of this attribute is a platform-specific file path. Read only. Native code only!
	 */
	var nativeTarget : ACString;
	/**
	 * This attribute returns the parent nsIFile for this nsIFile.
	 * The parent will be null when this nsIFile references the top of the volume. For example, C:\ does not have a parent. Read only.
	 */
	var parent : NsIFile;
	/**
	 * This attribute exposes the full platform-specific path of the nsIFile (including the leafName). Read only.
	 * Example, this could return "/home/user/foo.txt" or "C:\Images\my.jpeg"
	 */
	var path : AString;
	/**
	 * The value of this attribute is a UNIX-style file permission mask for this nsIFile.
	 * Changing the permissions of a nsIFile operates on the underlying filesystem. As of Gecko 1.7, changing the permissions of a non-existent file has undefined behavior.
	 */
	var permissions : ULong;
	/**
	 * The value of this attribute is a UNIX-style file permission mask for this nsIFile.
	 * Unlike permissions, this attribute corresponds to the permissions of the symbolic link referenced by this nsIFile. If this nsIFile does not reference a symbolic link, then the value of this attribute is undefined.
	 * Changing the permissions of a nsIFile operates on the underlying filesystem. As of Gecko 1.7, changing the permissions of a non-existent file has undefined behavior.
	 */
	var permissionsOfLink : ULong;
	/**
	 * On some platforms, the value of nsIFile.path may be insufficient to uniquely identify the file on the local file system. The persistent descriptor is intended to be used whenever a nsIFile needs to be serialized to disk and later recovered. This string is not intended for display to users.
	 * Note: The value of the followLinks attribute is not encoded in the persistent descriptor.
	 */
	var persistentDescriptor : ACString;
	/**
	 * This attribute exposes the full target of the nsIFile - the full path with any symbolic links dereferenced.
	 * Accessor to the string path. The native version of these strings are not guaranteed to be a usable path to pass to NSPR or the C stdlib. There are problems that affect platforms on which a path does not fully specify a file because two volumes can have the same name (For example Mac). This is solved by holding "private", native data in the nsIFile implementation. This native data is lost when you convert to a string. DO NOT PASS TO USE WITH NSPR OR STDLIB! Read only.
	 * Exceptions thrown
	 * 
	 * NS_ERROR_FILE_INVALID_PATH
	 * Indicates that this nsIFile does not reference a symbolic links.
	 */
	var target : AString;
	
	function append(node:AString) : Void;
	function appendNative(node:ACString) : Void;
	function appendRelativeNativePath(relativeFilePath:ACString) : Void;
	function appendRelativePath(relativeFilePath:AString) : Void;
	function clone() : NsIFile;
	function contains(inFile:NsIFile) : Bool;
	function copyTo(newParentDir:NsIFile, newName:AString) : Void;
	function copyToFollowingLinks(newParentDir:NsIFile, newName:AString) : Void;
	function copyToFollowingLinksNative(newParentDir:NsIFile, newName:ACString) : Void;
	function CopyToNative(newParentDir:NsIFile, newName:ACString) : Void;
	function create(type:ULong, permissions:ULong) : Void;
	function createUnique(type:ULong, permissions:ULong) : Void;
	function equals(inFile:NsIFile) : Bool;
	function exists() : Bool;
	function getRelativeDescriptor(fromFile:NsIFile) : ACString;
	function initWithFile(aFile:NsIFile) : Void;
	function initWithNativePath(filePath:ACString) : Void;
	function initWithPath(filePath:AString) : Void;
	function isDirectory() : Bool;
	function isExecutable() : Bool;
	function isFile() : Bool;
	function isHidden() : Bool;
	function isReadable() : Bool;
	function isSpecial() : Bool;
	function isSymlink() : Bool;
	function isWritable() : Bool;
	function launch() : Void;
	function load() : PRLibraryStar;
	function moveTo(newParentDir:NsIFile, newName:AString) : Void;
	function moveToNative(newParentDir:NsIFile, newName:ACString) : Void;
	function normalize() : Void;
	function openANSIFileDesc(mode:String) : FILE;
	function openNSPRFileDesc(flags:Long, mode:Long) : PRFileDescStar;
	function renameTo(newParentDir:NsIFile, newName:AString) : Void;
	function remove(recursive:Bool) : Void;
	function reveal() : Void;
	function setRelativeDescriptor(fromFile:NsIFile, relativeDesc:ACString) : Void;
}
