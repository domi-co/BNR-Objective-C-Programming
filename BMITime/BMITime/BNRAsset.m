//
//  BNRAsset.m
//  BMITime
//
//  Created by Dominique on 16/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description
{
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d, unassigned>", self.label, self.resaleValue];
    }
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
