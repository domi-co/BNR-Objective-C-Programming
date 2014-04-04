//
//  main.m
//  InterestingNames
//
//  Created by Dominique on 15/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *properNamesString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                          encoding:NSUTF8StringEncoding
                                                             error:NULL];
        NSArray *properNames = [properNamesString componentsSeparatedByString:@"\n"];

        NSString *namesString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                                encoding:NSUTF8StringEncoding
                                                                   error:NULL];
        NSArray *names = [namesString componentsSeparatedByString:@"\n"];

        for (NSString *properName in properNames) {
            NSString *lowercaseProperName = [properName lowercaseString];
            if ([names containsObject:lowercaseProperName]) {
                NSUInteger index = [names indexOfObject:lowercaseProperName];
                NSLog(@"Proper name : %@, common name : %@", properName, names[index]);
            }
        }
    }
    return 0;
}

