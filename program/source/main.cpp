#include <iostream>

#include "main.hpp"

int main()
{
  say_hello();
  std::cin.get();

  return 0;
}

void say_hello() { std::cout << "Hello, World!" << std::endl; }
