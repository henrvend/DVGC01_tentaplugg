#include <stdio.h>
#include <string.h>
#include <ctype.h>



int check(char *str)
{
    if(*str== '\0'){
        return 0;
    }else{
        return 1+check(str+1);
    }
}

int main()
{

    char *str = {"he1llo"};
    printf("%d\n", check(str));
}