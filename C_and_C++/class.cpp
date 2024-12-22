#include<iostream>

using namespace std;

class A {
	public:
		int answer;
		float result(float a, float b) {
			answer = a + b;
			return answer;
		}
};
class B : public A {
	public:
		float result(int a, int b) {
			answer = a - b;
			return answer;
		}
};
class C : public A {
	public:
		float result(float a, float b) {
			answer = a * b;
			return answer;
		}
};
class D : public A {
	public:
		float result(float a, float b) {
			answer = a / b;
			return answer;
		}
};

int main() {
A obj1;
B obj2;
C obj3;
D obj4;
	float a;
	float b;
	while(1) {

		cout << "\nEnter the first value: ";
		cin >> a;
		cout << "\nEnter the second value: ";
		cin >> b;
		char op;
		cout << "\nEnter the operation: ";
		cin >> op;
//		if(op=='q' || op=='Q') {
//			cout << "\nClosing...";
//			break;
//		}
		switch(op) {
			case '+':
				cout << "\nAnswer is: " << obj1.result(a,b) << endl;
				break;
			case '-':
				cout << "\nAnswer is: "	<< obj2.result(a,b) << endl;
				break;
			case '*':
				cout << "\nAnswer is: " << obj3.result(a,b) << endl;
				break;
			case '/':
				cout << "\nAnswer is: " << obj4.result(a,b) << endl;
				break;
			case 'q':
				cout << "\nClosing....";
				break;
		}
	}
}