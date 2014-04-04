//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Dominique on 15/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)p
{
    _purchaseSharePrice = p;
}

-(float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)p
{
    _currentSharePrice = p;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)n
{
    _numberOfShares = n;
}

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ (%d) = %.2f", self.symbol, [self numberOfShares], [self valueInDollars]];
}

@end
