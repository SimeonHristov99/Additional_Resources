#include "pch.h"
#include <iostream>

using namespace std;

void outputError()
{
	cout << "Attention: You Entered A Numbers That Does Not Correspond To Any Value Of A RGB Colour! Try again:\n" << endl;
}

bool checkData(int &red, int &green, int &blue);

void input(int &red, int &green, int &blue)
{
	do
	{
		cout << "Enter The Brightness Of The Colour Red: ";
		cin >> red;
		cout << "Enter The Brightness Of The Colour Green: ";
		cin >> green;
		cout << "Enter The Brightness Of The Colour Blue: ";
		cin >> blue;
	} while (!(checkData(red, green, blue)));
}

bool checkData(int &red, int &green, int &blue)
{
	if ((!(red >= 0 && red <= 255) || !(green >= 0 && green <= 255) || !(blue >= 0 && blue <= 255)))
	{
		outputError();
		return false;
	}
	return true;
}

int decimalToHexadecimalFirstLetter(int number)
{
	switch ((number / 16))
	{
	case 10:
		return int('A');
	case 11:
		return int('B');
	case 12:
		return int('C');
	case 13:
		return int('D');
	case 14:
		return int('E');
	case 15:
		return int('F');
	default:
		return (char)(number / 16 + '0');
	}
}

int decimalToHexadecimalSecondLetter(int number)
{
	switch ((number % 16))
	{
	case 10:
		return (int)'A';
	case 11:
		return (int)'B';
	case 12:
		return (int)'C';
	case 13:
		return (int)'D';
	case 14:
		return (int)'E';
	case 15:
		return (int)'F';
	default:
		return (char)(number % 16 + '0');
	}
}

char* goThroughString(char str[3], const int* colour)
{
	str[0] = decimalToHexadecimalFirstLetter(*colour);
	str[1] = decimalToHexadecimalSecondLetter(*colour);
	return str;
}

int main()
{
	int red = -1;
	int green = -1;
	int blue = -1;

	input(red, green, blue);
	cout << endl;

	char str[3] = { '>', '<', '\0' };

	cout << "    Answer: #" << goThroughString(str, &red);
	cout << goThroughString(str, &green);
	cout << goThroughString(str, &blue);

	return 0;
}

/*
Algorithm used:
	(in main) Create a variable called red of type integer that starts with the initial value of -1.
	Create a variable called green of type integer that starts with the initial value of -1.
	Create a variable called blue of type integer that starts with the initial value of - 1.
	(before main) Create a function called input of type void which takes the references of red, green and blue.
	In that fuction ask the user: "Enter the brightness of the colour red: ".
	Store the input in red.
	Ask the user: "Enter the brightness of the colour green: ".
	Store the input in green.
	Ask the user: "Enter the brightness of the colour blue: ".
	Store the input in blue.
	(before input) Declare a function called checkData of type bool which has a parameter - pointer of type int called colour.
	(as a first function) Create a new function called outputError of type void that takes no parameters.
	When that function is called I want the user to see: "Attention: You Entered A Numbers That Does Not Correspond With Any Value Of A RGB Colour! Try again:".
	(after input) Create the function checkData.
	In that function create a do-while loop which checks whether the entered numbers are in the range between 0 and 255 (incl).
	If they are not call outputError and return false. Otherwise, return true.
	(in main) Call input and move to a new line
	Create a variable called letter of type char that starts with the initial value of '>'.
	Create a variable called number of type integer that starts with the initial value -1.
	Create a character string which will hold the converted decimal.
	Implement the algorithm to convert a decimal to hexadecimal.
	Cout the anwer.
*/