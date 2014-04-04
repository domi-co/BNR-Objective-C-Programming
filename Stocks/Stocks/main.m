//
//  main.m
//  Stocks
//
//  Created by Dominique on 15/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        
        BNRForeignStockHolding *stock = [[BNRForeignStockHolding alloc] init];
        [stock setNumberOfShares:40];
        [stock setPurchaseSharePrice:2.3];
        [stock setCurrentSharePrice:4.5];
        stock.conversionRate = 0.94;
        stock.symbol = @"XYZ";
        [portfolio addStock:stock];
        
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        [stock1 setNumberOfShares:90];
        [stock1 setPurchaseSharePrice:12.19];
        [stock1 setCurrentSharePrice:10.56];
        stock1.symbol = @"ABC";
        [portfolio addStock:stock1];
        
        stock1 = [[BNRStockHolding alloc] init];
        [stock1 setNumberOfShares:210];
        [stock1 setPurchaseSharePrice:45.1];
        [stock1 setCurrentSharePrice:49.51];
        stock1.symbol = @"FGH";
        [portfolio addStock:stock1];

        stock1 = [[BNRStockHolding alloc] init];
        [stock1 setNumberOfShares:263];
        [stock1 setPurchaseSharePrice:190];
        [stock1 setCurrentSharePrice:525];
        stock1.symbol = @"AAPL";
        [portfolio addStock:stock1];

        NSLog(@"Value of portfolio %.2f", [portfolio valueOfPortfolio]);
        NSArray *topThree = [portfolio topThree];
        NSLog(@"top three: %@", topThree);
        NSLog(@"portfolio: %@", [portfolio sortBySymbol]);
    }
    return 0;
}

