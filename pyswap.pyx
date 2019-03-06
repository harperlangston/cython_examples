import array

cdef extern from "swap.h":
    void swap_int(int *x, int *y)

def _py_swap_int(int[:] x, int[:] y) -> None:
    swap_int(&x[0], &y[0])

def py_swap_int(int x, int y) -> None:
    x_arr = array.array('i', [x])
    y_arr = array.array('i', [y])
    _py_swap_int(x_arr, y_arr)
    return x_arr[0], y_arr[0]