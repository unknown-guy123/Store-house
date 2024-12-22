#include<iostream>
#include<stdio.h>
#include<conio.h>
#include<fstream>
#include<string.h>

using namespace std;

struct log {
	string username;
	string password;

} ;

int main() {
//making login system.
	string username;
	string password;
	struct log login[2];
	cout << "\nCreate your username: ";
	cin >> login[0].username;
	cout << "\nCreate your password: ";
	cin >> login[0].password;
	ofstream logs("logi_data.txt");
	logs << login[0].username << endl;
	logs << login[0].password << endl;
	logs.close();
	system("cls");
	while(1) {
		cout << "\nEnter your username: ";
		cin >> username;
		cout << "\nEnter your password: ";
		cin >> password;

		int i = login[0].username.compare(username);
		if(i > 0 || i < 0) {
			//	cout << "\nYour 'username' or 'password' is invaild.";
		} else {//if i==0.
			//	cout << "\nWelcome " << login.username;
		}
		int j = login[0].password.compare(password);
		if(j > 0 || j < 0) {

		} else {
			//if j == 0.
		}
		if (i > 0 || i < 0 || j > 0 || j < 0) {
			cout << "\nYour 'username' or 'password' is invaild.";
		} else {
			cout << "\nWelcome " << login[0].username;
			break;
		}
	}
	int number_of_student;
	cout << "\nEnter the number of student: ";
	cin >> number_of_student;
	string* name = new string[number_of_student];
	cout << "\nEnter the name of student.";
	for(int a=1; a<=number_of_student; a++) {
		cout << "\nStudent " << a << ": ";
		cin >> name[a];
	}
	ofstream student("student_data.txt");
	if(student.is_open()) {
		for(int a=0; a<=number_of_student; a++) {
			student << name[a] << endl;
		}
		student.close();
		cout<<"\nstudent_data open.";
	} else {
		cout << "\nUnable to open student_data.";
	}
	return 0;
}