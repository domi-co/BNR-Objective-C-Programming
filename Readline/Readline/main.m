//
//  main.m
//  Readline
//
//  Created by Dominique on 15/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <readline/readline.h>
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        const char *line = readline(NULL);
        
        NSString *name = [NSString stringWithUTF8String:line];
        
        NSLog(@"%@ is cool", name);
        
    }
    return 0;
}

