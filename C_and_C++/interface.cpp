#include<iostream>

	using namespace std;

class A{
	public:
		virtual int add() const = 0;
		virtual int sub() const = 0;
};
class B : public A{
	public:
		int add() {
			int a,b,ans;
			cout << "\nEnter number: ";
			cin >> a >> b;
			ans=a+b;
			cout << "\nAnswer add: " << ans;
			return ans;
		}
		int sub() {
			int a,b,ans;
			cout << "\nEnter number: ";
			cin >> a >> b;
			ans = a-b;
			cout << "\nAnswer sub: " << ans;
			return ans;
		}
};
	
int main(){
	B o;
	o.add();
	o.sub();
}