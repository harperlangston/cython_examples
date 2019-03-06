LIB_DIR = lib

default: pyswap

pyswap: setup.py pyswap.pyx $(LIB_DIR)/libswap.a
	python3 setup.py build_ext --inplace && rm -f pyswap.c && rm -Rf build

$(LIB_DIR)/libswap.a:
	make -C $(LIB_DIR) libswap.a

clean:
	rm -f *.so *~
