#include "pch.h"
#include "Time.hpp"
#include <iostream>

int main()
{
	std::cout << "when going to bed? ";
	Minutes m1;
	std::cin >> m1;
	Hours h1;
	std::cin >> h1;

	Time(m1, h1);


	std::cout << "\n\n";

	return 0;
}