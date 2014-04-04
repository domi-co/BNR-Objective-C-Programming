//
//  main.m
//  Constants
//
//  Created by Dominique on 20/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10,12));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString * currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"locale currency is %@", currency);
        
    }
    return 0;
}

