#include <iostream>

#include "AddTwo.h"

int MyTest ()
{
  std::cout << AddTwo(1, 2) << std::endl;
  return 0;
}


int main (int argc, char* argv[])
{
  if (argc != 1) {
    std::cerr << "Usage: " << argv[0] << " " << std::endl;
    return 1;
  }

  MyTest();

  return 0;
}
