//
//  main.c
//  Turkey
//
//  Created by Dominique on 12/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    float weight;
    weight = 14.2;
    
    printf("The turkey weighs %f.\n", weight);
    
    float cookingTime;
    cookingTime = 15.0 + 15.0 * weight;

    printf("Cook it for %f minutes.\n", cookingTime);
    return 0;
}

