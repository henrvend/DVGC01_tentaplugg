#include <stdio.h>

int recsum(int *arr){
    if(!*arr){
        return 0;
    }else{
        return *arr+recsum(arr+1);
    }

}

int main(){
    int arr[]={1,2,3,4,5};
    int test;
    test = recsum(arr);
    printf("%d\n", test);
    return 0;
}