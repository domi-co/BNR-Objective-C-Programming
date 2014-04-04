//
//  main.c
//  CalcTime
//
//  Created by Dominique on 14/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{
    long nowSeconds = time(NULL);
    nowSeconds += 4000000;
    
    struct tm now;
    
    localtime_r(&nowSeconds, &now);
    
    printf("In 4'000'000 seconds it will be %d-%d-%d\n", now.tm_mday, now.tm_mon + 1, now.tm_year + 1900);

    return 0;
}

