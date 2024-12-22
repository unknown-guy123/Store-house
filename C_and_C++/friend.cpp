#include<iostream>

	using namespace std;

class A{
	public:
		friend int B(int x,int a,int b);
		void show();
};
int B(int x, int a, int b){
	cout << "\nEnter the number: ";
	cin >> a >> b;
	x=a+b;
	cout << x;
}

int main(){
	A ob;
	int x,a,b;
	ob.B(x,a,b);
}