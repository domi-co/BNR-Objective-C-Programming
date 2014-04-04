//
//  main.m
//  WhoAmI
//
//  Created by Dominique on 14/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *host = [NSHost currentHost];
        NSString *hostname = [host localizedName];
        NSLog(@"My name is %@", hostname);
    }
    return 0;
}