# CPythonExtension

This is a basic example of how to create a C-Python extension module.

To compile using gcc:
make
(creates lib/AddTwo.so)

To build with python:
python python/setup.py build
(creates build/lib.macosx-10.11-intel-2.7/AddTwo.so or some similar path)

To Run:
Check python/test.py to make sure correct path to AddTwo.so exists then:
python python/test.py


make clean:
Will delete all libs and the ./build directory
