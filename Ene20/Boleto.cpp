#include <iostream>
#include <cmath>
using namespace std;
int main() {

	int boleto, edad, boleto2, boleto3;
	boleto = 10;

	cout << "Cual es tu edad?" << endl;
	cin >> edad;
	
	if (edad >= 18 and edad <= 64) {
		cout << "Su boleto cuesta: " << boleto << endl;
	}
	else {
		if (edad <= 17) {
			boleto2 = (boleto * 0.60);
			cout << " Su boleto cuesta: " << boleto2 << endl;
		}
		else {
			if (edad >= 65) {
				boleto3 = (boleto * 0.50);
				cout << "Su boleto cuesta: " << boleto3 << endl;
			}

		}
	}



	return 0; 
}