//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Dominique on 15/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}
@property (nonatomic) NSString *symbol;

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)p;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)p;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)n;

- (float)costInDollars;
- (float)valueInDollars;
@end
