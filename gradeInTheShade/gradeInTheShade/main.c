//
//  main.c
//  gradeInTheShade
//
//  Created by Dominique on 29/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float averageFloats(float data[], int dataCount)
{
    float sum = 0.0;
    for (int i = 0; i < dataCount; i++) {
        sum = sum + data[i];
    }
    return sum / dataCount;
}

int main(int argc, const char * argv[])
{
    float gradeBook[] = {60.2, 94.5, 81.1};
    
    float average = averageFloats(gradeBook, 3);
    
    printf("Average = %.2f\n", average);
    
    return 0;
}

