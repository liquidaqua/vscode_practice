#include <iostream>
#include <string>

class SimpleClass
{
public:
    int number;
    std::string name;
};

int main()
{
    SimpleClass sc;
    sc.number = 0;
    sc.name = "ishii tom";

    std::cout << "number: " << sc.number;
    std::cout << "name: " << sc.name << std::endl;

    std::cin.get();
}