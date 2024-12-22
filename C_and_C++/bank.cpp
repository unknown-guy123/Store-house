#include<iostream>
#include<string>
#include<fstream>

using namespace std;

class bank {
	public:
		int num;
		string B_name;
		string B_pass;


		void take() {

			cout << "\nCreate your username: ";
			cin >> B_name;
			cout << "\nCreate your password: ";
			cin >> B_pass;
			cout << "\nEnter the number of customer: ";
			cin >> num;
			ofstream take("bank.txt");
			take << B_name << endl;
			take << B_pass << endl;
			take.close();

			string C_name[num];
			string C_pass[num];

			for(int i=0; i<num; i++) {
				cout << "\nEnter name of customer " << i << ": ";
				cin >> C_name[i];
				cout << "\nCreate password: ";
				cin >> C_pass[i];
			}
			ofstream customer("customer.txt");
			for(int i=0; i<num; i++) {
				customer << C_name[i] << endl;
				customer << C_pass[i] << endl;
			}
			customer.close();
		}
};
class customers{
	public:
		
};

int main() {
	bank obj1;
	obj1.take();
}