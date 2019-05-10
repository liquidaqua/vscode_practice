#include <iostream>
using namespace std;

int main(void)
{
    double cnt = 0.0;
    int N = 1000;
    for (int i = 0; i < N; i++)
    {

        double x = (double)rand() / RAND_MAX;
        double y = (double)rand() / RAND_MAX;

        if (x * x + y * y < 1)
        {
            cnt += 1.0;
        }
    }

    cout << "‰~Žü—¦ = " << cnt / N * 4.0 << endl;

    int score[5];
    for (int i = 0; i < 5; i++)
    {
        score[i] = i;
    }
    for (int i = 0; i < 5; i++)
    {
        cout << "score_" << i << " = " << score[i] << endl;
        if (score[i] >= 3)
        {
            break;
        }
    }
    cout << "int byte = " << sizeof(int) << endl;

    
}