//
//  main.m
//  Groceries
//
//  Created by Dominique on 15/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *groceryList = [NSMutableArray array];
        NSString *bread = @"Loaf of bread";
        NSString *milk = @"Container of milk";
        NSString *butter = @"Stick of butter";
        
        [groceryList addObject:bread];
        [groceryList addObject:milk];
        [groceryList addObject:butter];
        
        // insert code here...
        NSLog(@"My grocery list is");
        
        for (NSString *item in groceryList) {
            NSLog(@"%@", item);
        }
        
    }
    return 0;
}

