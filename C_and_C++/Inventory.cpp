#include<iostream>
using namespace std;

int main(){
	const int size = 100;
	const int gold = 5;
	int goods1;
	cout << "\nGOLD size is 5 and your bag size is 100" <<"\nEnter the number of gold you want: ";
	cin >> goods1;
	if(goods1>size){
		cout << "\nYou can't buy this much.";
	}
	int g2;
	g2 = goods1 * gold;
	//cout << "\n" << s1;
	if(g2>size){
		cout << "\nYou can't buy this much.";
	}
	int g3;
	g3 = size - g2;
	if(g3<0){
		cout << "\nYou can't buy this much.";
	} else{
		cout << "\nCurrent storage: " << g3;	
	}
	return 0;
}