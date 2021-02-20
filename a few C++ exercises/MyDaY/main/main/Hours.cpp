#include "pch.h"
#include "Hours.hpp"
#include <iostream>

Hours::Hours(const Minutes& _minutes, const unsigned& _hours) : Minutes(_minutes), m_hours{_hours} {}

Hours Hours::operator+(const Hours& other)
{
	return Hours((static_cast<const Minutes&>(*this) + other), m_hours + other.m_hours);
}

Hours& Hours::operator+=(const Hours& other)
{
	return *this = *this + other;
}

Hours Hours::operator-(const Hours& other)
{
	return Hours((static_cast<const Minutes&>(*this) - other), m_hours - other.m_hours);
}

Hours& Hours::operator-=(const Hours& other)
{
	return *this = *this - other;
}

bool Hours::isZero() const
{
	return m_hours == 0;
}

std::istream& operator>>(std::istream& in, Hours& data)
{
	return in >> data.m_hours;
}

std::ostream& operator<<(std::ostream& out, const Hours& data)
{
	return out << data.m_hours << " " << static_cast<Minutes>(data);
}