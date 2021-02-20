#pragma once
#include <iostream>

class Minutes
{
public:
	Minutes(const unsigned& _minutes = 0) : m_minutes{_minutes} {}

	Minutes operator+(const Minutes&) const;
	Minutes& operator+=(const Minutes&);

	Minutes operator-(const Minutes&) const;
	Minutes& operator-=(const Minutes&);

	bool addHour() const;
	bool isZero() const;

	friend std::istream& operator>>(std::istream&, Minutes&);
	friend std::ostream& operator<<(std::ostream&, const Minutes&);

private:
	unsigned m_minutes;
};