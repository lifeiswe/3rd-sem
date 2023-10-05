/*
#include<iostream>
using namespace std;

namespace first
{
    int a=12;
}
//int a=20;
namespace second
{
    int a=200;
}
using namespace first;
int main()
{
    cout<<a<<endl;
    cout<<first::a<<endl;
    cout<<second::a<<endl;
}
*/
#include<iostream>
using namespace std;
namespace first
{
    void display()
    {
        cout<<"I am in first space"<<endl;
    }
}
namespace second
{
    void display()
    {
        cout<<"I'm in second space"<<endl;
    }
}
void display()
{
    cout<<"I'm available globally"<<endl;
}
int main()
{
    first::display();
    second::display();
    display();
}
