#include<stdlib.h>

struct node {
    int data;
    struct node* next;
};

typedef struct node* Node;
extern Node head;

void insert(int d) {
    Node temp = (Node)malloc(sizeof(Node));
    temp->data = d;
    temp->next = NULL;
    Node temp2 = head;
    
    // For First element
    if (head == NULL) {
        head = temp;
        return;
    }
    
    while (temp2->next != NULL) {
        temp2 = temp2->next;
    }
    
    temp2->next = temp;
}


void print() {
    Node temp = head;
    while (temp != NULL) {
        printf("Element is %d \n", temp->data);
        temp = temp->next;
    }
}