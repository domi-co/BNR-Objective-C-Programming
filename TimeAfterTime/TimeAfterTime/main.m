//
//  main.m
//  TimeAfterTime
//
//  Created by Dominique on 14/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        double seconds = [now timeIntervalSince1970];
        NSLog(@"This NSDate instance lives at %p", now);
        NSLog(@"The date is %@", now);
        NSLog(@"Seconds since Unix epoch : %f", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100'000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                           inUnit:NSMonthCalendarUnit
                                          forDate:now];
        NSLog(@"Day of the month is %lu", day);
        
        NSDateComponents *comp = [[NSDateComponents alloc] init];
        [comp setYear:1969];
        [comp setMonth:11];
        [comp setDay:25];
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comp];
        unsigned long duration = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"I've been alive since %lu seconds", duration);
        
    }
    return 0;
}

