#include "pch.h"
#include <iostream>

using namespace std;

const int MAX_SIZE = 50;
const int roundBy = 100;

void repeat();
void disclaimer();
char getAction();
void menu();
void menu2();
double addition(int &cntr);
void answerMenu2(int);
double multi();
void timeConvert();
void findTheMax();
void findTheMin();
double actpower(double base, double power);

void doStuff(char action)
{
	switch (int(action))
	{
	case (int)'1':
	{
		disclaimer();
		int cntr = -1;
		cout << "\n   Result: " << addition(cntr) << endl;
		menu2();
		answerMenu2((int)'1');
		break;
	}
	case (int)'2':
	{
		disclaimer();
		cout << "\n   Result: " << fixed << multi() << endl;
		cout << scientific;
		menu2();
		answerMenu2((int)'2');
		break;
	}
	case (int)'3':
	{
		disclaimer();
		double number1 = -1.0, number2 = 2.0;
		cout << "\nEnter The Dividend: ";
		cin >> number1;
		cout << "Enter The Divisor: ";
		cin >> number2;
		cout << "\n   Result: " << number1 / number2 << endl;
		menu2();
		answerMenu2((int)'3');
		break;
	}
	case (int)'4':
	{
		int number = -1;
		cout << "\nEnter number: ";
		cin >> number;
		cout << "    The Square Root Of " << number << " Is: " <<fixed<< sqrt(number) << "." << endl;
		menu2();
		answerMenu2((int)'4');
		break;
	}
	case (int)'5':
	{
		disclaimer();
		int base = -1, power = -1;
		cout << "\nEnter The Base: ";
		cin >> base;
		cout << "Enter The Power: ";
		cin >> power;
		cout << "\n   Result: " <<fixed<< actpower(base, power) << endl;
		cout << scientific;
		menu2();
		answerMenu2(int('5'));
		break;
	}
	case (int)'6':
	{
		disclaimer();
		int cntr = 0;
		cout << "\n   Result: " << (round((addition(cntr) / cntr) * roundBy)) / roundBy << endl;
		menu2();
		answerMenu2(int('6'));
		break;
	}
	case (int)'7':
	{	
		disclaimer();
		timeConvert();
		menu2();
		answerMenu2(int('7'));
		break;
	}
	case (int)'8':
	{
		disclaimer();
		findTheMax();
		menu2();
		answerMenu2(int('8'));	
		break;
	}
	case (int)'9':
	{
		disclaimer();
		findTheMin();
		menu2();
		answerMenu2(int('9'));
		break;
	}
	default:
	{
		cout << "You Entered Invalid Data. Please Try Again:\n\n";
		repeat();
	}
	}
}

int main()
{
	menu();
	doStuff(getAction());

	return 0;
}

void disclaimer()
{
	cout << "\nNOTE: FRACTIONS ARE WRITTEN WITH A FULL STOP INSTEAD OF A COMMA! Input ends with \"0\"!\n";
}

void repeat()
{
	menu();
	doStuff(getAction());
}

char getAction()
{
	char action = '>';
	cin >> action;
	return action;
}

void menu()
{
	cout << " Welcome to Calculator0.1. Please choose the number of the desired action: \n\n       MENU:\n\n    1. Addition/Subtraction.\n    2. Multiplication.\n    3. Division.\n    4. Square Root.\n    5. Power.\n    6. Average.\n    7. Time Convertion.\n    8. Find Me The Maximum Number.\n    9. Find Me The Minimum Number.";
	cout << "\n\n Your choice: ";
}

void menu2()
{
	cout << "\nWhat Do You Want To Do Now:\n[B] - Go Back To Main Menu\n[A] - Again\n[K] - Close Program";
	cout << "\n\n   Your choice: ";
}

double addition(int &cntr)
{
	cntr = 0;
	cout << "\nPlease Enter The Numbers You Wish To Add (limit is " << MAX_SIZE << " numbers):\n";
	double arr[MAX_SIZE] = { 0 };
	for (int i = 0; i < MAX_SIZE; ++i)
	{
		cin >> arr[i];
		if (arr[i] == 0) break;
		cntr++;
	}
	double sum = 0;
	for (int i = 0; arr[i] != 0; ++i)
		sum += arr[i];
	return sum;
}

void answerMenu2(int ascicode)
{
	switch (getAction())
	{
	case 'B':
	{
		repeat();
		break;
	}
	case 'A':
	{
		doStuff(char(ascicode));
		break;
	}
	}
}

double multi()
{
	cout << "\nPlease Enter The Numbers You Wish To Multiply (limit is " << MAX_SIZE << " numbers):\n";
	double product = 1;
	double arr[MAX_SIZE] = { 0 };
	for (int i = 0; i < MAX_SIZE; ++i)
	{
		cin >> arr[i];
		if (arr[i] == 0) break;
	}
	for (int i = 0; arr[i] != 0; ++i)
		product *= arr[i];
	return product;
}

void timeConvert()
{
	double arrMinutes[MAX_SIZE] = { 0 };
	int hour = 0;
	int day = 0;
	double sum = 0;

	cout << "\nPlease Enter How Much Minutes You Want To Add:" << endl;
	for (int i = 0; i < MAX_SIZE; ++i)
	{
		cin >> arrMinutes[i];
		if (arrMinutes[i] == 0) break;
		sum += arrMinutes[i];
	}

	cout << "Total Minutes: " << sum << endl << "    Result: ";

	while (sum >= 1440)
	{
		day++;
		sum -= 1440;
	}

	if (day)
		cout << day << " day(s) ";
	if (int(sum / 60) % 10)
		cout << int(sum / 60) % 10 << " hour(s) and ";

	cout << int(sum) % 60 << " minutes." << endl;
}

void findTheMax()
{
	double arr[MAX_SIZE] = { 0 };
	for (int i = 0; i < MAX_SIZE; ++i)
	{
		cin >> arr[i];
		if (arr[i] == 0) break;
	}
	double max = arr[0];
	for (int i = 1; arr[i] != 0; ++i)
	{
		max < arr[i] ? max = arr[i] : max;
	}
	cout << "\n   Result: " << fixed << max << endl;
	cout << scientific;
}

void findTheMin()
{
	double arr[MAX_SIZE] = { 0 };
	for (int i = 0; i < MAX_SIZE; ++i)
	{
		cin >> arr[i];
		if (arr[i] == 0) break;
	}
	double min = arr[0];
	for (int i = 1; arr[i] != 0; ++i)
	{
		min > arr[i] ? min = arr[i] : min;
	}
	cout << "\n   Result: " << fixed << min << endl;
	cout << scientific;
}

double actpower(double base, double power)
{
	double result = 1;
	if (power >= 0)
	{
		for (int i = 1; i <= power; ++i)
		{
			result *= base;
		}
	}
	if (power < 0)
	{
		base = 1 / base;
		power *= (-1);
		for (int i = 1; i <= power; ++i)
		{
			result *= base;
		}
	}
	return result;
}
