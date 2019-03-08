from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

swap_extension = Extension(
    name="pyswap",
    sources=["pyswap.pyx"],
    libraries=["_cycodes"],
    library_dirs=["lib"],
    include_dirs=["lib"]
)
setup(
    name="pyswap",
    ext_modules=cythonize([swap_extension])
)
