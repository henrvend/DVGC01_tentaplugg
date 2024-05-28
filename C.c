#include <stdio.h>
#include <string.h>
#include <ctype.h>



void check(char *str)
{
    int koll = 0;
    int i = 0;
    while (str[i])
    {
        if (isdigit(str[i]))
        {
            koll = 1;
        }
        i++;
    }
    if (koll)
    {
        printf("NUM\n");
    }
    else
    {
        printf("not\n");
    }
}

int main()
{

    char *str = {"he1llo"};
    check(str);
}