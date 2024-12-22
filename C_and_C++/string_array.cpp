#include<iostream>

using namespace std;

int* create_array(int a,int b,int* c){
	c[0]=a;
	c[1]=b;
	return c;
	
}

int main(){
	int num[2],num1,num2;
	
	cout<<"\nEnter first: ";
	cin>>num1;
	cout<<"\nEnter second: ";
	cin>>num2;
	
	for(int i=0;i<2;i++){
		cout<<"\nvalue: "<<i<<num[i]
	}
}