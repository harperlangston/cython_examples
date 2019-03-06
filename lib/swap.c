#include "swap.h"

void swap_int(int *x, int *y){
  int tmp = *x;
  *x = *y;
  *y = tmp;
}
