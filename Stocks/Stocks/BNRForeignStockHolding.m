//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Dominique on 16/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

-(float)costInDollars
{
    return [super costInDollars] * self.conversionRate;
}

-(float)valueInDollars
{
    return [super valueInDollars] * self.conversionRate;
}

@end
