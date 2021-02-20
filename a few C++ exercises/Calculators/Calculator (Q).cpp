//The program also simplifies the number if it can be divisible by 2 .. 13. Some other modifications of the result are also applied.

#include "pch.h"
#include <iostream>
#include <iomanip>

class Rational
{
private:
	int numerator;
	int denominator;
public:
	void setNumerator()
	{
		std::cin >> numerator;
	}

	int getNumerator()
	{
		return numerator;
	}

	void setDenominator()
	{
		std::cin >> denominator;
	}

	void makeRationalNumber(const int& a, const int& b)
	{
		numerator = a;
		denominator = b;
	}

	void printRationalNumber() const
	{
		std::cout << (double)numerator << "/" << denominator << "\n";
	}

	double simplifyRationalNumber() // 1 for everything is alright, 0 for a zero result, -1 for a neutral denominator
	{
		while(numerator % 2 == 0 && denominator % 2 == 0 || numerator % 3 == 0 && denominator % 3 == 0 || numerator % 5 == 0 && denominator % 5 == 0 || numerator % 7 == 0 && denominator % 7 == 0)
		{
			while (numerator % 2 == 0 && denominator % 2 == 0)
			{
				numerator /= 2; denominator /= 2;
			}

			while (numerator % 3 == 0 && denominator % 3 == 0)
			{
				numerator /= 3; denominator /= 3;
			}

			while (numerator % 5 == 0 && denominator % 5 == 0)
			{
				numerator /= 5; denominator /= 5;
			}

			while (numerator % 7 == 0 && denominator % 7 == 0)
			{
				numerator /= 7; denominator /= 7;
			}

			while (numerator % 10 == 0 && denominator % 10 == 0)
			{
				numerator /= 10; denominator /= 10;
			}

			while (numerator % 11 == 0 && denominator % 11 == 0)
			{
				numerator /= 11; denominator /= 11;
			}

			while (numerator % 13 == 0 && denominator % 13 == 0)
			{
				numerator /= 13; denominator /= 13;
			}
		}

		if (denominator % 10 == 0)
		{
			double numerator2 = numerator;
			while (denominator % 10 == 0)
			{
				numerator2 /= 10.0;
				denominator /= 10;
			}
			return numerator2;
		}
		

		if (numerator == 0 || denominator == 0)
		{
			return 0;
		}

		if (denominator == 1)
		{
			return -1;
		}

		return 1;
	}

	void add(const Rational& n1, const Rational& n2);
	void subtract(const Rational& n1, const Rational& n2);
	void multiply(const Rational& n1, const Rational& n2);
	void divide(const Rational& n1, const Rational& n2);
};

void Rational::add(const Rational& n1, const Rational& n2)
{
	makeRationalNumber(n1.numerator * n2.denominator + n1.denominator*n2.numerator, n1.denominator * n2.denominator);
}

void Rational::subtract(const Rational& n1, const Rational& n2)
{
	makeRationalNumber(n1.numerator * n2.denominator - n1.denominator*n2.numerator, n1.denominator * n2.denominator);
}

void Rational::multiply(const Rational& n1, const Rational& n2)
{
	makeRationalNumber(n1.numerator*n2.numerator, n1.denominator*n2.denominator);
}

void Rational::divide(const Rational& n1, const Rational& n2)
{
	makeRationalNumber(n1.numerator * n2.denominator, n1.denominator * n2.numerator);
}

int main()
{
	Rational n1, n2, answer;
	char proceedWith = 'x';
	char newOperation = 'y';
	char newNumbers = 'z';

	do
	{
		std::cout << "Number 1:\n";
		std::cout << "" << std::setw(20) << "Enter numerator: ";
		n1.setNumerator();
		std::cout << "" << std::setw(25) << "Enter denominator: ";
		n1.setDenominator();

		std::cout << "Number 2:\n";
		std::cout << "" << std::setw(20) << "Enter numerator: ";
		n2.setNumerator();
		std::cout << "" << std::setw(25) << "Enter denominator: ";
		n2.setDenominator();
		do
		{
			do
			{
				std::cout << "\nSelect operation (+, -, /, *): ";
				std::cin >> proceedWith;
			} while (proceedWith != '+' && proceedWith != '-' && proceedWith != '/' && proceedWith != '*');

			switch (proceedWith)
			{
			case '+':
			{
				answer.add(n1, n2);
				break;
			}
			case '-':
			{
				answer.subtract(n1, n2);
				break;
			}
			case '/':
			{
				answer.divide(n1, n2);
				break;
			}
			default: answer.multiply(n1, n2);
			}

			double result = answer.simplifyRationalNumber();

			if (result == -1)
				std::cout << "\n" << std::setw(25) << "Answer: " << answer.getNumerator();

			else if (result == 0)
				std::cout << "\n" << std::setw(25) << "Answer: 0\n";

			else if (result == 1)
			{
				std::cout << "\n" << std::setw(25) << "Answer: ";
				answer.printRationalNumber();
				std::cout << "\n";
			}
			else
				std::cout << "\n" << std::setw(25) << "Answer: " << result;

			std::cout << "\nAnother operation? (Y/N): ";
			std::cin >> newOperation;
		} while (newOperation == 'Y' || newOperation == 'y');

		std::cout << "New numbers? (Y/N): ";
		std::cin >> newNumbers;
	} while (newNumbers == 'Y' || newNumbers == 'y');

	return 0;
}