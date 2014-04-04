//
//  main.m
//  DateList
//
//  Created by Dominique on 15/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];

        NSMutableArray *dateList = [NSMutableArray array];
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList insertObject:yesterday atIndex:0];
        
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"The second date is %@", dateList[1]);
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is the date %@", d);
        }
        
        [dateList removeObjectAtIndex:0];
        NSLog(@"Date 0 is %@", dateList[0]);
    }
    return 0;
}

