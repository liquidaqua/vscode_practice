#include <iostream>
#include <stdio.h>
#include <iomanip>
#include "func.h"

using namespace std;
// g++ g2.cpp func.cpp func.h Ç≈é¿çs
int main()
{
    int x, y;
    x = 4, y = 7;
    int z = sum(x, y);
    output(z);

    char str[32];

    std::cout << "input string" << std::endl;
    std::cin >> std::setw(32) >> str;

    std::cout << "\nstr: " << str << std::endl;

    std::cin.ignore(1024, '\n');
    getchar();

    return 0;
}