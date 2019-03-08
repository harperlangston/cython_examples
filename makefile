LIB_DIR = lib

default: pyswap

pyswap: setup.py pyswap.pyx $(LIB_DIR)/lib_cycodes.a
	python3 setup.py build_ext --inplace && rm -f pyswap.c && rm -Rf build

$(LIB_DIR)/libswap.a:
	make -C $(LIB_DIR) lib_cycodes.a

clean:
	rm -f *.so *~
