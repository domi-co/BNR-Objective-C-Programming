//
//  main.c
//  yostring
//
//  Created by Dominique on 29/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int spaceCount(const char* s);

int main(int argc, const char * argv[])
{
    char x = '!';
    while (x <= '~') {
        printf("%x is %c\n", x, x);
        x++;
    }
    
    const char *start = "A backslash after two new lines and a tab \n\n\t\n";
    
    printf("%s has %zu characters\n", start, strlen(start));
    printf("The third letter is \'%c\'\n", start[2]);
    printf("\"%s\" has %d spaces\n", start, spaceCount(start));
    return 0;
}

int spaceCount(const char* sentence) {
    int spaces = 0;
    for (int i = 0; sentence[i] != '\0'; i++) {
        if (sentence[i] == 0x20) {
            spaces++;
        }
    }
    return spaces;
}

