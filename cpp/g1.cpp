#include <iostream>
#include <math.h>
using namespace std;

int sum(int a, int b);
void output(int a);

void plusone(int *x);
void not_plusone(int x);

int main()
{
    std::cout << "Hello World\n";

    int a;
    double b;

    a = 10;
    std::cout << a % 3 + a / 3 << std::endl;

    int c;

    // std::cin >> c;
    // std::cout << c << std::endl;

    for (int i = 0; i < 5; i++)
    {
        if (i % 3 != 0)
            std::cout << i << std::endl;
    }

    int i = 10;
    while (i > 7)
    {
        if (i == 9)
            break;
        std::cout << i << std::endl;
        i--;
    }

    double v[3] = {1, 3, 4};

    std::cout << v << std::endl;

    for (int i = 0; i < 3; i++)
        std::cout << v[i] << "\t";
    std::cout << std::endl;

    double A[2][2] = {{1, 2}, {2, 3}};

    int N = rand();

    std::cout << "N = " << N << std::endl;

    int *p;
    int d = 3;
    std::cout << "dのポインタ = " << &d << std::endl;
    std::cout << "d = " << d << std::endl;

    p = &d;
    std::cout << "pのポインタ = " << p << std::endl;
    std::cout << "p = " << *p << std::endl;

    *p = 1;
    std::cout << "d = " << d << std::endl;

    int e, f;
    e = 10, f = 22;
    int g = sum(e, f);
    output(g);

    int h = 7;
    plusone(&h);
    std::cout << "h = " << h << std::endl;

    int j = 7;
    not_plusone(j);
    std::cout << "j = " << j << std::endl;

    return 0;
}

int sum(int a, int b)
{
    int c = a + b;
    return c;
}

void output(int a)
{
    std::cout << "The answer is " << a << std::endl;
}

void plusone(int *p)
{
    (*p)++;
}
void not_plusone(int p)
{
    p++;
}