#include "sort.h"

int cmpfunc (const void * a, const void * b) {
  return ( *(int*)a - *(int*)b );
}

void qsort_int(int *values, const int n) {
  qsort (values, n, sizeof(int), cmpfunc);
}
