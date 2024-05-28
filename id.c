#include <stdio.h>
#include <ctype.h>

void is_id(char *str){

    int is_it = 1;
    if(isalpha(*str)){
        while(*str){
            if(!isalnum(*str)){
                is_it = 0;
            }
            str++;
        }
    }else is_it = 0;

    if(is_it){
        printf("Is ID\n");
    }else{
        printf("Not ID\n");
    }
}
int rec_is_id(char *str, int is){
    
}


int main(){

    char *isid = "idstr1ng1";
    char *notid = "1notid";
    is_id(isid);
    is_id(notid);
    rec_is_id(isid, 1);
    rec_is_id(notid, 1);
    return 0;
}