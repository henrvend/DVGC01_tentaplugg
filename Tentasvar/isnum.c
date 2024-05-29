#include <stdio.h>
#include <ctype.h>

int isNum(char *str){
    while(*str){
        if(!isdigit(*str++)){
            return 0;
        }
    }
    return 1;

}

int main(){
    if(isNum("r")){
        printf("true");
    }
    return 0;
}