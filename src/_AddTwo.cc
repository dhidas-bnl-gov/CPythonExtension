#include "_AddTwo.h"
#include "AddTwo.h"

#include <iostream>

PyObject* AddTwo_AddTwo(PyObject*, PyObject* args)
{
  float A = 0;
  float B = 0;
  if (!PyArg_ParseTuple(args, "ff", &A, &B)) {
    return 0;
  }


  return Py_BuildValue("f", AddTwo(A, B));
}




static PyMethodDef methodtable[] = {
  {"AddTwo", AddTwo_AddTwo, METH_VARARGS, "float AddTwo(float, float)"},
  {NULL, NULL}
};


PyMODINIT_FUNC initAddTwo (void) {
  Py_InitModule("AddTwo", methodtable);
}
