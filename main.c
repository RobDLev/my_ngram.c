#include "header.h"

#define MAX_ARRAY_SIZE 128

int main(int argc, char** argv) {
    int index = 1;
    int array[MAX_ARRAY_SIZE] = {0};
  
    while (index < argc) {
        fill_array(&array[0], argv[index]);
        index++;
    }
    print_array(&array[0], MAX_ARRAY_SIZE);
    return 0;
}