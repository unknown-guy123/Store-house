#include<iostream>
#include<string>
#include<fstream>
#include<vector>
#include<cstdio>

using namespace std;

struct {
	string Aname = "Disha_Taloja";
	string Apass = "1234Disha";
} admin;

int main() {
	int ask_file=0;

	cout << "\n1:Create file.\n2:Load File.\n3: Delete file." << endl;
	cin >> ask_file;

	if(ask_file==1) {
		int num = 2;
		// cout << "\nEnter the number of teachers: ";
		// cin >> num;
		vector<string> T_name;
		vector<string> T_pass;
		vector<string> T_FN;
		for(int a=0; a<num; a++) {
			string temp,temp1,temp3;
			cout << "\nEnter the name of teacher " << (a+1) << ": " << endl;
			cin >> temp;
			cout << "\nCreate password of " << (a+1) << ": "<< endl;
			cin >> temp1;
			cout << "\nCreate name for filename: ";
			cin >> temp3;
			T_name.push_back(temp);
			T_pass.push_back(temp1);
			T_FN.push_back(temp3);
		}
		ofstream Tnames("Teacher_Database.txt");
		Tnames << "   Names";
		Tnames << "  Passwords" << endl;
		for(int a=0; a<num; a++) {
			Tnames << (a+1) << ". " << T_name[a];
			Tnames << (a+1) << " " << T_pass[a] << endl;
		}
		Tnames.close();
	}
	
	if(ask_file==2) {
		string fileName;
		cout << "\nEnter the name of file: ";
		cin >> fileName;

		while(1) {
			string username, password;
			cout << "\nEnter username: ";
			cin >> username;
			cout << "\nEnter password: ";
			cin >> password;
			int i = admin.Aname.compare(username);
			int j = admin.Apass.compare(password);
			if(i!=0||j!=0) {
				cout << "\n'Username' or 'password' is Invalid.";
			} else {
				//cout << "\nHello " << admin.Aname << endl;
				break;
			}
		}
		ifstream read(fileName);
		string line;
		while(getline(read, line)) {
			cout << line << endl;
		}
		read.close();
	} else {
		cout << "\nFile not found.";
	}
	if(ask_file==3) {
		const char* file;
		cout << "\nEnter the filename: ";
		if(remove(file)==0) {
			cout << "\nFile " << file << "deleted." << endl;
		} else {
			perror("Error while deleting the file.");
		}
	}
	return 0;
}