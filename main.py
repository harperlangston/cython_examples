import pyswap
import numpy as np

x = 3
y = 4

print([x,y])

x, y = pyswap.py_swap_int(x,y)

print([x,y])

values = np.array([4, 3, 5, 100, 1])

pyswap.py_sort_int(values, 5)

