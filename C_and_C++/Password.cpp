// I have copy this code from blackbox.ai
#include <iostream>
#include <cstdlib>
#include <ctime>
#include <string>
 
  using namespace std;

string generatePassword(int length) {
  string password = "";
  srand(time(0));
  int i = 0;

  while (i < length) {
    int digit = rand() % 10;
    password += to_string(digit);
    i++;
  }
  return password;
}

 string P() {
  int passwordLength = 4;
  string password;

  while (true) {
    password = generatePassword(passwordLength);
    cout << "Generated password: " << password << endl;
    char response;
    cout << "Do you want to generate another password? (y/n): ";
    cin >> response;

    if (response == 'n' || response == 'N') {
      break;
    }
  }
  return 0;
}