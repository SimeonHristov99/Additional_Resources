#pragma once
#include "Minutes.hpp"
#include <ostream>

class Hours : public Minutes
{
public:
	Hours(const Minutes& _minutes = 0, const unsigned& _hours = 0);

	Hours operator+(const Hours&);
	Hours& operator+=(const Hours&);

	Hours operator-(const Hours&);
	Hours& operator-=(const Hours&);

	bool isZero() const;

	friend std::istream& operator>>(std::istream&, Hours&);
	friend std::ostream& operator<<(std::ostream&, const Hours&);
	
private:
	unsigned m_hours;
};