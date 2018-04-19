#include<stdio.h>
#include"list.c"

Node head = NULL;

int main() {
    insert(1);
    insert(4);
    insert(2);
    insert(3);
    insert(4);
    print();
    printf("Enter\n");
    return 0;
}