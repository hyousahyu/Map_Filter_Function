#include <iostream>
#include <vector>
#include <algorithm>
#include <stdio.h>

using namespace std;

template <typename F,typename T>
T amap(F func, T lst){
    std::transform(lst.begin(),lst.end(),lst.begin(),func);
    return lst;

}

template <typename F,typename T>
T filter(F func, T lst){
    std::remove_if(lst.begin(),lst.end(),func);
    return lst;

}




int main(){
    auto a = [] (int i) { return i*2;};
    auto b = [] (int i) { return i%2==0;};

    vector <int> l {1,3,2,4,5};
    auto returnMap = amap(a,l);
    auto returnFilt=filter(b,l);
}
