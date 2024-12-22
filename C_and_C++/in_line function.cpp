#include<iostream>

	using namespace std;

inline int add(int a,int b, int c){
	cout << "\nEnter the number: ";
	cin >> a >> b;
	c=a+b;
	cout << c;
	return c;
}

int main(){
	int a,b,c;
	add(a,b,c);
}