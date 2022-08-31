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
- (BOOL)archiveFilesWith:(NSArray<NSString *> *)paths
                      to:(NSString*)destination
               overwrite:(BOOL)overwrite;
- (BOOL)archiveContentsOfFolderAt:(NSArray<NSString *> *)path
                               to:(NSString*)destination
                        overwrite:(BOOL)overwrite;
@end

/// Describes an object that can unarchive files
@protocol PAUnarchiver <NSObject>
- (BOOL)unarchiveFile:(NSString *)source
                   to:(NSString*)destination
            overwrite:(BOOL)overwrite;
@end

/// Zip implementation of archiving and unarchiving
@interface PAZipArchive : NSObject <PAArchiver, PAUnarchiver>

@end

NS_ASSUME_NONNULL_END
