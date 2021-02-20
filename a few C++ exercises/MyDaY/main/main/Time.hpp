#pragma once
#include"Hours.hpp"
#include <ostream>

class Time : public Hours
{
public:

	Time operator+(const Time&);
	Time operator-(const Time&);

	friend std::ostream& operator<<(std::ostream&, const Time&);
};