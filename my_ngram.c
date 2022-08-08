#include "header.h"   // When including any of your homemade .h files, you must use double quotes.

void fill_array(int* array, char* input){
    int index = 0;
    while (input[index] != '\0') {
        if (input[index] != '"') {
            array[(int)input[index]] += 1;
        }
        index++;
    }
}

void print_array(int* array, int size_array) {
    int index = 0;
    while (index < size_array) {
        if (array[index] > 0) {
            printf("%c: %i\n", index, array[index]);
        }
        index++;
    }
}