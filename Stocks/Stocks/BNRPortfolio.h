//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Dominique on 18/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *stocks;

- (void)addStock:(BNRStockHolding *)s;
- (void)removeStock:(BNRStockHolding *)s;
- (float)valueOfPortfolio;
- (NSArray *)topThree;
- (NSArray *)sortBySymbol;
@end
