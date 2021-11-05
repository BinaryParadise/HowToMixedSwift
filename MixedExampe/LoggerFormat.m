//
//  LoggerFormat.m
//  MixedExampe
//
//  Created by Rake Yang on 2021/11/4.
//

#import "LoggerFormat.h"

@implementation LoggerFormat

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage {
    NSString *file = [NSURL fileURLWithPath:logMessage.file].pathComponents.lastObject;
    if ([file hasSuffix:@".swift"]) {
        return [NSString stringWithFormat:@"%@ %@.%@+%lu %@", logMessage.timestamp, logMessage.fileName, logMessage.function, (unsigned long)logMessage.line, logMessage.message];
    } else {
        return [NSString stringWithFormat:@"%@ %@+%lu %@", logMessage.timestamp, logMessage.function, (unsigned long)logMessage.line, logMessage.message];
    }
}

@end
