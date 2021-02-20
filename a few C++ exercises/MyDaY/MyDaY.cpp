#include "pch.h"
#include <iostream>
#include <fstream>
using namespace std;
const int DESCRIPTION = 51;
const int MAX_TASKS = 100;


void swap(int &number1, int &number2)
{
	int temp = number1;
	number1 = number2;
	number2 = temp;
}

void sort(int arr[], int &size, int maxIndex = -1)
{
	for (int i = 0; i < size - 1; ++i)
	{
		for (int j = 1; j < size; ++j)
			if (arr[j] > arr[maxIndex])
				maxIndex = j;

		swap(arr[i], arr[maxIndex]);
	}
}

void timeDuration(char str0[], char str1[], int &hoursF, int &minutesF, int hours0 = 11, int hours1 = 11, int minutes0 = 11, int minutes1 = 11)
{
	hours0 = (str0[0] - '0') * 10 + str0[1] - '0';

	minutes0 = (str0[3] - '0') * 10 + str0[4] - '0';

	hours1 = (str1[0] - '0') * 10 + str1[1] - '0';

	minutes1 = (str1[3] - '0') * 10 + str1[4] - '0';

	if (hours0 < hours1)
	{
		swap(hours0, hours1);
		swap(minutes0, minutes1);
	}

	if (hours0 > hours1)
	{
		if (minutes0 < minutes1)
		{
			hours0--;
			minutes0 += 60;
			hoursF = hours0 - hours1;
			minutesF = minutes0 - minutes1;
		}
		else if (minutes0 == minutes1)
		{
			hoursF = hours0 - hours1;
			minutesF = 0;
		}
		else
		{
			hoursF = hours0 - hours1;
			minutesF = minutes0 - minutes1;
		}
	}

	else
	{
		if (minutes0 < minutes1)
		{
			hoursF = 0;
			minutesF = minutes1 - minutes0;
		}
		else if (minutes0 == minutes1)
		{
			hoursF = 0;
			minutesF = 0;
		}
		else
		{
			hoursF = 0;
			minutesF = minutes0 - minutes1;
		}
	}
}

int main()
{
	char proceed = 'x';
	char task[MAX_TASKS][DESCRIPTION];
	int arr[MAX_TASKS] = { 0 };
	int size = 0;	
	char str[10] = "";
	char str1[10] = "";
	int hoursF = -1, minutesF = -1;
	cout << "When would you like to wake up? ";
	cin.getline(str, 10);
	cout << "When would you like to go to bed? ";
	cin.getline(str1, 10);
	do
	{
		cout << "Task " << size + 1 << endl;
		cout << "     What is the task about (max. 50 characters): ";

		cin.getline(task[size], DESCRIPTION);

		cout << "     Assing task " << size + 1 << " a priority (0 - lowest, 5 - hightest): ";
		cin >> arr[size];

		++size;
		cout << "\nNext task? (y/n";
		cin.ignore();
		cout << ") ";
		cin >> proceed;
		cin.ignore();
	} while (proceed == 'Y' || proceed == 'y');

	sort(arr, size);
	timeDuration(str, str1, hoursF, minutesF);
	
	ofstream dailyRoutine;
	dailyRoutine.open("Daily Rountine.txt");

	dailyRoutine << "	   ROUTINE FOR TOMORROW:" << endl << endl;
	
	for (int j = 0; size; ++j, --size)
	{
		dailyRoutine << "		 " << j + 1 << ". ";
		dailyRoutine << task[arr + j, size - 1] << endl;
	}

	dailyRoutine << "You will be awake for about " << hoursF << " hours and " << minutesF << " minutes." << endl;


	dailyRoutine << "\nPRODUCTIVITY TIP: In order to accomplish your\nlong term goals focus on completeing your first five most importaint tasks!";

	dailyRoutine.close();

	return 0;
}