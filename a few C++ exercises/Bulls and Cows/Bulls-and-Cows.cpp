#include "pch.h"
#include <iostream>
#include <time.h>

using namespace std;

const int SIZE = 4;

bool hasUniqueDigits(int number);
void generateRandomFourDigitNumberWithDifferentDigits(int &number);
void convertToString(int &number, char *str);
int presentgetIndex(char *arr, char &element);
void compare(int &cows, int &bulls, char *strN, char *strG);

int main()
{
	int number = -1, guess = -1, cows = -1, bulls = -1;
	char strFromGuess[5], strFromNumber[5];

	generateRandomFourDigitNumberWithDifferentDigits(number);	
	convertToString(number, strFromNumber);

	cout << "Welcome to Bulls and Cows. How is this game played? I am thinking of a four-digit number comprised of different digits. Your task is to guess it! Good luck : ] !" << endl << endl;

	do
	{
		cout << "Enter guess: ";
		cin >> guess;

		while (guess < 1000 || guess > 9999 || !(hasUniqueDigits(guess)))
		{
			cout << "\nERROR: You must enter a four-digit number with unique digits!\nTry again: ";
			cin >> guess;
		}
	
		convertToString(guess, strFromGuess);
		compare(cows, bulls, strFromNumber, strFromGuess);

		cout << "    Bulls: " << bulls << "  Cows: " << cows << endl << endl;

	} while (bulls != SIZE);

	cout << "Yay!! You guessed my number! Well done!" << endl;

	int again = -1;
	cout << "\nWant to play again? (1 - \"Yes\" and 0 - \"No\")" << endl;
	cin >> again;

	if (again == 1)
		main();

	return 0;
}

bool hasUniqueDigits(int number)
{
	while (number >= 10)
	{
		int currentDigit = number % 10;
		int otherDigits = number / 10;
		do
		{
			if (currentDigit == otherDigits % 10)
				return false;
			otherDigits /= 10;
		} while (otherDigits != 0);

		number /= 10;
	}

	return true;
}

void generateRandomFourDigitNumberWithDifferentDigits(int &number)
{
	srand((unsigned int)time(NULL));
	do
	{
		number = rand() % 9000 + 1000;
	} while (!(hasUniqueDigits(number)));
}

void convertToString(int &number, char *str)
{
	str[3] = number % 10 + '0';
	str[2] = number / 10 % 10 + '0';
	str[1] = number / 100 % 10 + '0';
	str[0] = number / 1000 % 10 + '0';
	str[4] = '\0';
}

void compare(int &cows, int &bulls, char *strN, char *strG)
{
	cows = 0;
	bulls = 0;
	for (int i = 0; i < SIZE; ++i)
		(strG[presentgetIndex(strN, strG[i])] == strN[i]) ? ++bulls : ((presentgetIndex(strN, strG[i]) != -1) ? ++cows : cows);
}

int presentgetIndex(char *arr, char &element)
{
	for (int i = 0; i < SIZE; ++i)
		if (arr[i] == element)
			return i;
	return -1;
}