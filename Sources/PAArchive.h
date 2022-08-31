//
//  PAArchive.h
//  PAArchiveExample
//
//  Created by Cristian Habliuc on 30.08.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// Describes an object that can archive files and folders
@protocol PAArchiver <NSObject>

/// Creates a new archive containing all the files in the specified path list
///
/// @param paths the full paths to the files that need to be archived
/// @param destination the full destination path, including the archive file name and extension
/// @param overwrite set to YES to overwrite any existing file. If set to NO, it will return NO, signaling failure to overwrite
+ (BOOL)archiveFilesAtPaths:(NSArray<NSString *> *)paths
                         to:(NSString*)destination
                  overwrite:(BOOL)overwrite;

/// Creates a new archive containing all the files and folders inside the specified path
/// @param path the full path to the folder you wish to compress
/// @param destination the full destination path, including the archive file name and extension
/// @param overwrite set to YES to overwrite any existing file. If set to NO, it will return NO, signaling failure to overwrite
+ (BOOL)archiveContentsOfFolderAtPath:(NSArray<NSString *> *)path
                                   to:(NSString*)destination
                            overwrite:(BOOL)overwrite;

@end

/// Describes an object that can unarchive files
@protocol PAUnarchiver <NSObject>

/// Decompresses (inflates) an existing archive to a specified destionation
///
/// @param source the full path to the archive
/// @param destination the destination folder where to decompress its contents
/// @param overwrite set to YES to overwrite any existing file. If set to NO, it will return NO, signaling failure to overwrite
+ (BOOL)unarchiveFileAtPath:(NSString *)source
                         to:(NSString*)destination
                  overwrite:(BOOL)overwrite;

@end

/// Zip implementation of archiving and unarchiving
@interface PAZipArchive : NSObject <PAArchiver, PAUnarchiver>
@end

NS_ASSUME_NONNULL_END
