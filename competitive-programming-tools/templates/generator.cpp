#include <bits/stdc++.h>

using namespace std;

const int batch = 0;
const int start_case = 0;
const int num_cases = 0;

static inline __attribute__((always_inline)) int gen(int lower, int upper){return rand()%(upper-lower+1)+lower;}
static inline __attribute__((always_inline)) long long gen(long long lower, long long upper){return (((long long)rand()<<16^(long long)rand())<<16^(long long)rand())%(upper-lower+1)+lower;}
static inline __attribute__((always_inline)) void mkdir(string name){system(("mkdir " + name + " >/dev/null 2>/dev/null").c_str());}
static inline __attribute__((always_inline)) void init(){srand(time(NULL));mkdir("cases/");mkdir("cases/batch" + to_string(batch));}

int main()
{
    init();
    ofstream out;
    for (int i = start_case; i < start_case+num_cases; i++)
    {
        string file = "cases/batch" + to_string(batch) + "/" + to_string(i);
        out.open(file + ".in");

        out.close();
        system(("./__FILE_NAME.run < " + file + ".in > " + file + ".out").c_str());
    }
}
