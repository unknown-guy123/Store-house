#include<iostream>

	using namespace std;

class poly{
	public:
		int number(int a, int b, int c){
			cout << "\nEnter the numbers: ";
			cin >> a >> b;
			c=a+b;
			cout << c;
			return c;
		}
		string number(string name){
			cout << "\nEnter the your name: ";
			cin >> name;
			cout << "\nYour name is " << name;
			return name;
		}
};

int main(){
	poly ob;
	int a,b,c;
	string name;
	ob.number(a, b, c);
	ob.number(name);
}