//
//  main.m
//  Stockz
//
//  Created by Dominique on 23/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stock setObject:[NSNumber numberWithFloat:185.3] forKey:@"initialPrice"];
        [stock setObject:[NSNumber numberWithBool:YES] forKey:@"available"];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd"];
        
        [stock setObject:[formatter dateFromString:@"2004-11-25"] forKey:@"date"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stock setObject:[NSNumber numberWithFloat:950.5] forKey:@"initialPrice"];
        [stock setObject:[NSNumber numberWithBool:YES] forKey:@"available"];
        [stock setObject:[NSData dataWithContentsOfFile:@"/tmp/google.png"] forKey:@"logo"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
        
    }
    return 0;
}

