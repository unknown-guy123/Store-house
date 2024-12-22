#include<iostream>

	using namespace std;
	
int main(){
	int* ptr;
	ptr = new int;
	*ptr = 10;
	
	int *arr = new arr[5];
	delete  arr;
	
	
	
	
	cout << "\nAddress: " << ptr << endl;
	cout << "\nValue: " << *ptr << endl;
}