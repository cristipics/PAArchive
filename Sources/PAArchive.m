//
//  PAArchive.m
//  PAArchiveExample
//
//  Created by Cristian Habliuc on 30.08.2022.
//

#import "PAArchive.h"
#import "archive.h"

@implementation PAArchive

+ (BOOL)archiveFilesAtPaths:(NSArray<NSString *> *)paths
                         to:(NSString*)destination
                  overwrite:(BOOL)overwrite {
    return YES;
}

+ (BOOL)archiveContentsOfFolderAtPath:(NSArray<NSString *> *)path
                                   to:(NSString*)destination
                            overwrite:(BOOL)overwrite {
    return YES;
}

+ (BOOL)unarchiveFileAtPath:(NSString *)source
                         to:(NSString*)destination
                  overwrite:(BOOL)overwrite {
    return YES;
}

@end
