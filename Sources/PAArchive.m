//
//  PAArchive.m
//  PAArchiveExample
//
//  Created by Cristian Habliuc on 30.08.2022.
//

#import "PAArchive.h"
#import "archive.h"

@implementation PAArchive

- (BOOL)archiveFilesWith:(NSArray<NSString *> *)paths
                      to:(NSString*)destination
               overwrite:(BOOL)overwrite {
    return YES;
}

- (BOOL)archiveContentsOfFolderAt:(NSArray<NSString *> *)path
                               to:(NSString*)destination
                        overwrite:(BOOL)overwrite {
    return YES;
}

- (BOOL)unarchiveFile:(NSString *)source
                   to:(NSString*)destination
            overwrite:(BOOL)overwrite {
    return YES;
}

@end
