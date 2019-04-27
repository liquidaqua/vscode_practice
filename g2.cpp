#include <iostream>
#include "func.h"

using namespace std;
// g++ g2.cpp func.cpp func.h Ç≈é¿çs
int main()
{
    int x, y;
    x = 4, y = 7;
    int z = sum(x, y);
    output(z);
    return 0;
}