#include <iostream>
#include<deque>
using namespace std;
int main() {
	deque<int> first;
	deque<int>::iterator itr;
	cout<<"Content of first deque:";
	first.push_back(1);
	first.push_back(2);
	first.push_back(3);
	for(itr=first.begin(); itr!=first.end(); ++itr)
		cout<<*itr<<" ";
	cout<<'\n';
	first.clear();
	cout<<"Now,Content of first deque:";
	first.push_back(4);
	first.push_back(5);
	first.push_back(6);
	for(itr=first.begin(); itr!=first.end(); ++itr)
		cout<<*itr<<" ";
	return 0;
}