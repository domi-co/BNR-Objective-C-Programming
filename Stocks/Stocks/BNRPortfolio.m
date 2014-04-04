//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Dominique on 18/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio ()
{
    NSMutableArray *_stocks;
}
@end

@implementation BNRPortfolio

- (void)setStocks:(NSArray *)stocks
{
    _stocks = [stocks mutableCopy];
}

- (NSArray *)stocks
{
    return [_stocks copy];
}

- (void)addStock:(BNRStockHolding *)s
{
    if (!_stocks) {
        _stocks = [NSMutableArray array];
    }
    NSLog(@"Add %@ to portfolio", s);
    [_stocks addObject:s];
}

- (void)removeStock:(BNRStockHolding *)s
{
    NSLog(@"Remove %@ from portfolio", s);
    [_stocks removeObject:s];
}

- (float)valueOfPortfolio
{
    float sum = 0;
    for (BNRStockHolding *stock in _stocks) {
        sum += [stock valueInDollars];
    }
    return sum;
}

- (NSArray *)topThree
{
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"currentSharePrice" ascending:NO];
    NSArray *topThree = [_stocks sortedArrayUsingDescriptors:@[descriptor]];
    
    if ([topThree count] > 3) {
        NSPredicate *predicate = [NSPredicate predicateWithFormat:[NSString stringWithFormat:@"currentSharePrice >= %f", [topThree[2] currentSharePrice]]];
        topThree = [topThree filteredArrayUsingPredicate:predicate];
    }
    return topThree;
}

- (NSArray *)sortBySymbol
{
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"symbol" ascending:YES];
    return [_stocks sortedArrayUsingDescriptors:@[descriptor]];
}

@end
