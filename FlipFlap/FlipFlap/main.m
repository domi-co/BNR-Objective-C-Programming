//
//  main.m
//  FlipFlap
//
//  Created by Dominique on 28/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        uint64 number = 0;
    
        for (int i = 0; i < 64; i = i + 2) {
            number = (number << 2) + 1;
            NSLog(@"%llu", number);
        }
        NSLog(@"number is %llu", number);
    }
    return 0;
}

