import array
import numpy as np

cdef extern from "swap.h":
    void swap_int(int *x, int *y)

def _py_swap_int(int[:] x, int[:] y) -> None:
    swap_int(&x[0], &y[0])

def py_swap_int(int x, int y) -> None:
    x_arr = array.array('i', [x])
    y_arr = array.array('i', [y])
    _py_swap_int(x_arr, y_arr)
    return x_arr[0], y_arr[0]

cdef extern from "sort.h":
    void qsort_int(int *values, const int n)

def _py_sort_int(int [:] values_arr, n) -> None:
    qsort_int(&values_arr[0], n)

def py_sort_int(values, n) -> None:
    values_arr = array.array('i',values)
    _py_sort_int(values_arr, n)
    print(np.asarray(values_arr))
